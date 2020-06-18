.class public Lcommon/stbmchal4/MCHal4;
.super Landroid/app/Activity;
.source "MCHal4.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MCHal4"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "pContext"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const-string v0, "MCHal4"

    const-string v1, "MCHal4"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iput-object p1, p0, Lcommon/stbmchal4/MCHal4;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public MCHal_AddNotificationAccess(Landroid/content/ContentResolver;)V
    .locals 8
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 86
    const-string v5, "MCHal4"

    const-string v6, "MCHal_AddNotificationAccess"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v4, "com.zte.iptvclient.android.launcher_idmnc/com.zte.iptvclient.android.launcher.activity.LauncherNotificationListenerService"

    .line 90
    .local v4, "strAccessor":Ljava/lang/String;
    const-string v5, "enabled_notification_listeners"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 93
    .local v0, "ENABLED_NOTIFICATION_LISTENERS_URI":Landroid/net/Uri;
    move-object v2, p1

    .line 96
    .local v2, "mCR":Landroid/content/ContentResolver;
    const-string v5, "enabled_notification_listeners"

    invoke-static {v2, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "flat":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 98
    const-string v5, "MCHal4"

    const-string v6, "[AddNotificationAccess]: No item. Set com.zte.iptvclient.android.launcher_idmnc/com.zte.iptvclient.android.launcher.activity.LauncherNotificationListenerService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v5, "enabled_notification_listeners"

    const-string v6, "com.zte.iptvclient.android.launcher_idmnc/com.zte.iptvclient.android.launcher.activity.LauncherNotificationListenerService"

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 102
    const-string v5, "MCHal4"

    const-string v6, "[AddNotificationAccess]: Empty item. Set com.zte.iptvclient.android.launcher_idmnc/com.zte.iptvclient.android.launcher.activity.LauncherNotificationListenerService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v5, "enabled_notification_listeners"

    const-string v6, "com.zte.iptvclient.android.launcher_idmnc/com.zte.iptvclient.android.launcher.activity.LauncherNotificationListenerService"

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 105
    :cond_2
    const-string v5, "com.zte.iptvclient.android.launcher_idmnc/com.zte.iptvclient.android.launcher.activity.LauncherNotificationListenerService"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const/16 v5, 0x3a

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    const-string v5, "com.zte.iptvclient.android.launcher_idmnc/com.zte.iptvclient.android.launcher.activity.LauncherNotificationListenerService"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v5, "MCHal4"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AddNotificationAccess]: Modify item. Set "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v5, "enabled_notification_listeners"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public MCHal_GetNTPSERVERString(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 81
    const-string v0, "MCHal4"

    const-string v1, "MCHal_GetNTPSERVERString:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v0, "ntp_server"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public MCHal_UpdateLocale(Ljava/util/Locale;)V
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 33
    const-string v3, "MCHal4"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MCHal_UpdateLocale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 38
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 39
    .local v1, "config":Landroid/content/res/Configuration;
    const-string v3, "MCHal4"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MCHal_UpdateLocale]: old config = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    if-eqz v1, :cond_1

    .line 42
    iput-object p1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 44
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 45
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 52
    :goto_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 53
    .local v2, "config2":Landroid/content/res/Configuration;
    if-eqz v2, :cond_0

    .line 55
    const-string v3, "MCHal4"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MCHal_UpdateLocale]: new config2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    if-eqz v0, :cond_2

    .line 60
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 68
    :goto_1
    const-string v3, "com.android.providers.settings"

    invoke-static {v3}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "config2":Landroid/content/res/Configuration;
    :goto_2
    const-string v3, "MCHal4"

    const-string v4, "MCHal_UpdateLocale end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void

    .line 49
    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v1    # "config":Landroid/content/res/Configuration;
    :cond_1
    :try_start_1
    const-string v3, "MCHal4"

    const-string v4, "config == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    :catch_0
    move-exception v3

    goto :goto_2

    .line 64
    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v1    # "config":Landroid/content/res/Configuration;
    .restart local v2    # "config2":Landroid/content/res/Configuration;
    :cond_2
    const-string v3, "MCHal4"

    const-string v4, "am == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
