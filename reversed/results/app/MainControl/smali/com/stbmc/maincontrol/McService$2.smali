.class Lcom/stbmc/maincontrol/McService$2;
.super Landroid/os/Handler;
.source "McService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stbmc/maincontrol/McService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stbmc/maincontrol/McService;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/McService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/McService;

    .prologue
    .line 3467
    iput-object p1, p0, Lcom/stbmc/maincontrol/McService$2;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3469
    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v8, v9, v10

    .line 3470
    .local v8, "trace":Ljava/lang/StackTraceElement;
    const-string v9, "[%s.%s] ..."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3472
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 3474
    .local v4, "intent":Landroid/content/Intent;
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 3656
    const-string v9, "[%s.%s] Invalid message ID."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/stbmc/maincontrol/ZLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3660
    :cond_0
    :goto_0
    return-void

    .line 3477
    :sswitch_0
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3478
    const-string v9, "[%s.%s] Start iptv app-tv."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3480
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 3481
    .local v5, "mIntent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/stbmc/maincontrol/McService$2;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-virtual {v9}, Lcom/stbmc/maincontrol/McService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 3482
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/high16 v9, 0x10000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3486
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v9, "/data/local/tmp/sy.ini"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3487
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 3489
    const-string v9, "@@@@@@@@@@=====> file sy.ini unexist! start zte tvclient."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3490
    const-string v9, "ztestb.iptv.app"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 3498
    :goto_1
    iget-object v9, p0, Lcom/stbmc/maincontrol/McService$2;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-virtual {v9, v5}, Lcom/stbmc/maincontrol/McService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3500
    .end local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 3502
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "MAIN_CONTROL"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3494
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "file":Ljava/io/File;
    :cond_1
    :try_start_1
    const-string v9, "@@@@@@@@@@=====> file sy.ini exist! start sy tvclient."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3495
    const-string v9, "com.android.smart.terminal.iptv"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1

    .line 3509
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "mIntent":Landroid/content/Intent;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :sswitch_1
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3510
    const-string v9, "[%s.%s] Stop iptv app-tv."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3515
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3516
    .local v2, "exitIntent":Landroid/content/Intent;
    const-string v9, "ACTION_UPGRADE_TO_IPTV"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3517
    const-string v9, "type"

    const/16 v10, 0x6a

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3518
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/stbmc/maincontrol/McService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3526
    .end local v2    # "exitIntent":Landroid/content/Intent;
    :sswitch_2
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3527
    const-string v9, "[%s.%s] Start iptv app-browser."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3528
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3529
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v9, "com.android.bw.load"

    const-string v10, "IPTV_BW"

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3530
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3531
    const/high16 v9, 0x10000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3532
    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3533
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.zte.browser"

    const-string v11, "com.zte.browser.BrowserActivity"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3535
    iget-object v9, p0, Lcom/stbmc/maincontrol/McService$2;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-virtual {v9, v4}, Lcom/stbmc/maincontrol/McService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3541
    .end local v0    # "bundle":Landroid/os/Bundle;
    :sswitch_3
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3542
    const-string v9, "[%s.%s] Stop iptv app-browser."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3543
    const-string v9, "ztestb.iptv.ztebw.exit"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3544
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/stbmc/maincontrol/McService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3550
    :sswitch_4
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3551
    const-string v9, "[%s.%s] Start cloud app."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3552
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 3553
    .local v6, "myIntent":Landroid/content/Intent;
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.zte.spiceview"

    const-string v11, "com.zte.spiceview.SpiceLoginActivity"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3554
    const/high16 v9, 0x10000000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3555
    iget-object v9, p0, Lcom/stbmc/maincontrol/McService$2;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-virtual {v9, v6}, Lcom/stbmc/maincontrol/McService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3561
    .end local v6    # "myIntent":Landroid/content/Intent;
    :sswitch_5
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3562
    const-string v9, "[%s] @@@@@=====> be going to standby mode!"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3564
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 3565
    .restart local v6    # "myIntent":Landroid/content/Intent;
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.android.providers.media"

    const-string v11, "com.android.providers.media.MediaScannerService"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3567
    const/high16 v9, 0x10000000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3568
    iget-object v9, p0, Lcom/stbmc/maincontrol/McService$2;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-virtual {v9, v6}, Lcom/stbmc/maincontrol/McService;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 3575
    .end local v6    # "myIntent":Landroid/content/Intent;
    :sswitch_6
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3576
    const-string v9, "[%s.%s] Show power off dialog."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3578
    const/4 v9, 0x1

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v10, :cond_2

    .line 3580
    iget-object v9, p0, Lcom/stbmc/maincontrol/McService$2;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v9}, Lcom/stbmc/maincontrol/McService;->access$3300(Lcom/stbmc/maincontrol/McService;)V

    goto/16 :goto_0

    .line 3584
    :cond_2
    iget-object v9, p0, Lcom/stbmc/maincontrol/McService$2;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v9}, Lcom/stbmc/maincontrol/McService;->access$3400(Lcom/stbmc/maincontrol/McService;)V

    goto/16 :goto_0

    .line 3593
    :sswitch_7
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3594
    const-string v9, "[%s.%s] Show power off dialog."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3596
    iget-object v9, p0, Lcom/stbmc/maincontrol/McService$2;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v9}, Lcom/stbmc/maincontrol/McService;->access$3500(Lcom/stbmc/maincontrol/McService;)V

    goto/16 :goto_0

    .line 3602
    :sswitch_8
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 3603
    const-string v9, "MAIN_CONTROL"

    const-string v10, "@@@@====> reset resolution to 720p."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3604
    iget-object v9, p0, Lcom/stbmc/maincontrol/McService$2;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v9}, Lcom/stbmc/maincontrol/McService;->access$2600(Lcom/stbmc/maincontrol/McService;)Lcommon/porting/MCPorting;

    move-result-object v9

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Lcommon/porting/MCPorting;->MCPorting_SetResolution(I)V

    .line 3605
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$3600()Lcommon/android/mscpcfg/McspCfgmanager;

    move-result-object v9

    const-string v10, "Common"

    const-string v11, "TVStandard"

    const/4 v12, 0x4

    invoke-virtual {v9, v10, v11, v12}, Lcommon/android/mscpcfg/McspCfgmanager;->putInteger(Ljava/lang/String;Ljava/lang/String;I)I

    .line 3606
    iget-object v9, p0, Lcom/stbmc/maincontrol/McService$2;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v9}, Lcom/stbmc/maincontrol/McService;->access$3700(Lcom/stbmc/maincontrol/McService;)V

    .line 3612
    :cond_3
    :sswitch_9
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3613
    const-string v9, "[%s.%s] start product tool test."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3614
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 3615
    .restart local v6    # "myIntent":Landroid/content/Intent;
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.zte.testtool"

    const-string v11, "com.zte.testtool.TestToolService"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3617
    const/high16 v9, 0x10000000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3618
    iget-object v9, p0, Lcom/stbmc/maincontrol/McService$2;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-virtual {v9, v6}, Lcom/stbmc/maincontrol/McService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 3625
    .end local v6    # "myIntent":Landroid/content/Intent;
    :sswitch_a
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3626
    sget-object v9, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    if-eqz v9, :cond_0

    .line 3627
    const/4 v9, 0x1

    new-array v9, v9, [B

    goto/16 :goto_0

    .line 3636
    :sswitch_b
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3637
    const-string v9, "[%s] start upgrade service."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3638
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 3639
    .restart local v6    # "myIntent":Landroid/content/Intent;
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.ztestb.upgrade"

    const-string v11, "com.ztestb.upgrade.UpgradeService"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3640
    const/high16 v9, 0x10000000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3641
    iget-object v9, p0, Lcom/stbmc/maincontrol/McService$2;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-virtual {v9, v6}, Lcom/stbmc/maincontrol/McService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 3647
    .end local v6    # "myIntent":Landroid/content/Intent;
    :sswitch_c
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3648
    const-string v9, "[%s] begin factory reset."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3649
    iget-object v9, p0, Lcom/stbmc/maincontrol/McService$2;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v9}, Lcom/stbmc/maincontrol/McService;->access$3200(Lcom/stbmc/maincontrol/McService;)V

    goto/16 :goto_0

    .line 3474
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_a
        0x100 -> :sswitch_0
        0x101 -> :sswitch_1
        0x102 -> :sswitch_2
        0x103 -> :sswitch_3
        0x104 -> :sswitch_4
        0x107 -> :sswitch_6
        0x108 -> :sswitch_9
        0x109 -> :sswitch_5
        0x10f -> :sswitch_b
        0x110 -> :sswitch_7
        0x111 -> :sswitch_8
        0x112 -> :sswitch_c
    .end sparse-switch
.end method
