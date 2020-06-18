.class public Lcom/stbmc/maincontrol/StartBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StartBroadcastReceiver.java"


# static fields
.field private static final ACTION_ANDROID_BOOT:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final ACTION_USER_MANUAL:Ljava/lang/String; = "ztestb.iptv.mc.load"

.field private static final ACTION_ZteMiddlewareBaseAbilityReady:Ljava/lang/String; = "android.intent.action.ZteMiddlewareBaseAbilityReady"

.field public static final TAG:Ljava/lang/String; = "MAIN_CONTROL"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private restartApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 105
    .local v7, "activityMgr":Landroid/app/ActivityManager;
    if-nez v7, :cond_0

    .line 106
    const-string v0, "MAIN_CONTROL"

    const-string v1, "[DingQin] restartApk --> activityMgr is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_0
    :try_start_0
    const-string v0, "MAIN_CONTROL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DingQin] restartApk --> startActivity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 134
    .local v9, "dqIntent":Landroid/content/Intent;
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const/high16 v0, 0x10000000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p1, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    .end local v9    # "dqIntent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 116
    :cond_0
    :try_start_1
    const-string v0, "MAIN_CONTROL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DingQin] restartApk --> Killall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " begin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "killall "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 118
    .local v8, "cmd":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 119
    .local v3, "bCmd":[B
    const/4 v0, 0x4

    new-array v5, v0, [B

    .line 120
    .local v5, "aReply":[B
    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x4

    aput v1, v6, v0

    .line 121
    .local v6, "aReplyLen":[I
    sget-object v0, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const-string v1, "STB_MAINCENTER"

    const v2, 0x1447001

    array-length v4, v3

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    .line 123
    const-string v0, "MAIN_CONTROL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DingQin] restartApk --> Killall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 124
    .end local v3    # "bCmd":[B
    .end local v5    # "aReply":[B
    .end local v6    # "aReplyLen":[I
    .end local v8    # "cmd":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 125
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "MAIN_CONTROL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DingQin] restartApk --> Killall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 138
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v10

    .line 139
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v0, "MAIN_CONTROL"

    const-string v1, "[DingQin] startActivity failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 31
    .local v4, "broadcastAction":Ljava/lang/String;
    const-string v13, "MAIN_CONTROL"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[DingQin] StartBroadcastReceiver --> broadcastAction = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string v13, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "android.intent.action.ZteMiddlewareBaseAbilityReady"

    .line 33
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "ztestb.iptv.mc.load"

    .line 34
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 35
    :cond_0
    new-instance v10, Landroid/content/Intent;

    const-string v13, "android.intent.action.RUN"

    invoke-direct {v10, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .local v10, "newIntent":Landroid/content/Intent;
    const/high16 v13, 0x10000000

    invoke-virtual {v10, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 37
    const-class v13, Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 38
    const-string v13, "MAIN_CONTROL"

    const-string v14, "[DingQin] StartBroadcastReceiver --> startService McService"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 100
    .end local v10    # "newIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 45
    :cond_2
    const-string v13, "android.intent.action.PACKAGE_REPLACED"

    .line 46
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 47
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v11

    .line 48
    .local v11, "pkgName":Ljava/lang/String;
    const-string v13, "MAIN_CONTROL"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[DingQin] StartBroadcastReceiver --> pkgName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v13, "com.CTC_ChinaNet.android.tm"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 51
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v6, "intent_start_TMService":Landroid/content/Intent;
    const-string v13, "com.CTC_ChinaNet.android.tm.TMServiceConfigs"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v13, "MAIN_CONTROL"

    const-string v14, "[DingQin] --> shanghaiDX -- Start TMService..."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 56
    .end local v6    # "intent_start_TMService":Landroid/content/Intent;
    :cond_3
    const-string v13, "com.zte.otvlauncher"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 57
    const-string v13, "com.zte.otvlauncher"

    const-string v14, "com.zte.otvlauncher.LauncherActivity"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/stbmc/maincontrol/StartBroadcastReceiver;->restartApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_4
    const-string v13, "com.hndxrm.dxlauncher"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 59
    const-string v13, "com.hndxrm.dxlauncher"

    const-string v14, "com.hndxrm.dxlauncher.models.homepage.MainActivity"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/stbmc/maincontrol/StartBroadcastReceiver;->restartApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_5
    const-string v13, "com.ihome.android.launcher"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 61
    const-string v13, "com.ihome.android.launcher"

    const-string v14, "com.ihome.android.launcher2.activity.MainActivity"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/stbmc/maincontrol/StartBroadcastReceiver;->restartApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 62
    :cond_6
    const-string v13, "com.android.smart.terminal.ctsh.iptv"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    const-string v13, "com.android.smart.terminal.iptv"

    .line 63
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 67
    :cond_7
    const-string v13, "sys.zte.iptv_upgrade"

    const-string v14, "0"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "IsIptvUpgrade":Ljava/lang/String;
    const-string v13, "1"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 69
    const-string v13, "MAIN_CONTROL"

    const-string v14, "[DingQin] --> 1 == sys.zte.iptv_upgrade, set it to 0."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v13, "sys.zte.iptv_upgrade"

    const-string v14, "0"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0500cd

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "iptvInstallSucc":Ljava/lang/String;
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v7, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    .line 77
    .local v12, "toast":Landroid/widget/Toast;
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 78
    const-string v13, "activity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 79
    .local v3, "activityMgr":Landroid/app/ActivityManager;
    if-nez v3, :cond_9

    .line 80
    const-string v13, "MAIN_CONTROL"

    const-string v14, "[DingQin] --> activityMgr is null"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_1
    const-string v13, "MAIN_CONTROL"

    const-string v14, "[DingQin] --> shanghaiDX -- startService com.android.smart.terminal.iptv/com.itv.android.iptv.service.IPTVService"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v8, Landroid/content/Intent;

    const-string v13, "com.android.smart.iptv.service"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v8, "iptvIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 72
    .end local v3    # "activityMgr":Landroid/app/ActivityManager;
    .end local v7    # "iptvInstallSucc":Ljava/lang/String;
    .end local v8    # "iptvIntent":Landroid/content/Intent;
    .end local v12    # "toast":Landroid/widget/Toast;
    :cond_8
    const-string v13, "MAIN_CONTROL"

    const-string v14, "[DingQin] --> 0 == sys.zte.iptv_upgrade, return."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 83
    .restart local v3    # "activityMgr":Landroid/app/ActivityManager;
    .restart local v7    # "iptvInstallSucc":Ljava/lang/String;
    .restart local v12    # "toast":Landroid/widget/Toast;
    :cond_9
    :try_start_0
    const-string v13, "android.app.ActivityManager"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const-string v14, "forceStopPackage"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 84
    .local v9, "method":Ljava/lang/reflect/Method;
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-virtual {v9, v3, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 86
    .end local v9    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    .line 87
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 95
    .end local v2    # "IsIptvUpgrade":Ljava/lang/String;
    .end local v3    # "activityMgr":Landroid/app/ActivityManager;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "iptvInstallSucc":Ljava/lang/String;
    .end local v12    # "toast":Landroid/widget/Toast;
    :cond_a
    const-string v13, "com.android.launcher"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 96
    const-string v13, "com.android.launcher"

    const-string v14, "com.zte.iptvclient.android.launcher.mainActivity"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/stbmc/maincontrol/StartBroadcastReceiver;->restartApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
