.class public Lcom/android/settings/cnd/About;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "About.java"


# instance fields
.field mForumUrl:Landroid/preference/Preference;

.field mSiteUrl:Landroid/preference/Preference;

.field mSourceUrl:Landroid/preference/Preference;

.field mYouTubeUrl:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private launchUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 67
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 68
    .local v1, uriUrl:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 69
    .local v0, donate:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/cnd/About;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 70
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const/high16 v4, 0x7f05

    invoke-virtual {p0, v4}, Lcom/android/settings/cnd/About;->addPreferencesFromResource(I)V

    .line 31
    const-string v4, "cna_website"

    invoke-virtual {p0, v4}, Lcom/android/settings/cnd/About;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cnd/About;->mSiteUrl:Landroid/preference/Preference;

    .line 32
    const-string v4, "cna_forum"

    invoke-virtual {p0, v4}, Lcom/android/settings/cnd/About;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cnd/About;->mForumUrl:Landroid/preference/Preference;

    .line 33
    const-string v4, "cna_source"

    invoke-virtual {p0, v4}, Lcom/android/settings/cnd/About;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cnd/About;->mSourceUrl:Landroid/preference/Preference;

    .line 34
    const-string v4, "cna_youtube"

    invoke-virtual {p0, v4}, Lcom/android/settings/cnd/About;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cnd/About;->mYouTubeUrl:Landroid/preference/Preference;

    .line 36
    const-string v4, "devs"

    invoke-virtual {p0, v4}, Lcom/android/settings/cnd/About;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 37
    .local v1, devsGroup:Landroid/preference/PreferenceGroup;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, devs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 39
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 42
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 43
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 44
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 45
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    .line 46
    .local v3, p:Landroid/preference/Preference;
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setOrder(I)V

    .line 48
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 50
    .end local v3           #p:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/cnd/About;->mSiteUrl:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 55
    const-string v0, "http://bbs.androm.org"

    invoke-direct {p0, v0}, Lcom/android/settings/cnd/About;->launchUrl(Ljava/lang/String;)V

    .line 63
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/android/settings/cnd/About;->mForumUrl:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 57
    const-string v0, "http://blog.sina.com.cn/u/1334172695"

    invoke-direct {p0, v0}, Lcom/android/settings/cnd/About;->launchUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/android/settings/cnd/About;->mSourceUrl:Landroid/preference/Preference;

    if-ne p2, v0, :cond_3

    .line 59
    const-string v0, "http://github.com/boogaloo-bino/LBN-Mod"

    invoke-direct {p0, v0}, Lcom/android/settings/cnd/About;->launchUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/android/settings/cnd/About;->mYouTubeUrl:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 61
    const-string v0, "http://weibo.com/nian0114"

    invoke-direct {p0, v0}, Lcom/android/settings/cnd/About;->launchUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
