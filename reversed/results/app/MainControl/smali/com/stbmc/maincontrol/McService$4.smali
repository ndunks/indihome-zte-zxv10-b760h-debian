.class Lcom/stbmc/maincontrol/McService$4;
.super Landroid/content/BroadcastReceiver;
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
    .line 3713
    iput-object p1, p0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 29
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3717
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v24, v3, v4

    .line 3718
    .local v24, "trace":Ljava/lang/StackTraceElement;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 3719
    .local v11, "action":Ljava/lang/String;
    const-string v3, "MAIN_CONTROL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "get broadcase receiver action = "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3721
    const-string v3, "com.zte.telephone.poweroff"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3723
    const-string v3, "MAIN_CONTROL"

    const-string v4, "========> com.zte.telephone.poweroff recieved"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3724
    const/4 v3, 0x6

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$700()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 3726
    const/4 v3, 0x4

    new-array v0, v3, [B

    move-object/from16 v23, v0

    .line 3727
    .local v23, "tmp":[B
    sget-object v3, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v4, 0x140800e

    const/16 v26, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v3, v4, v0, v1}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    .line 3915
    .end local v23    # "tmp":[B
    :cond_0
    :goto_0
    return-void

    .line 3730
    :cond_1
    const-string v3, "com.zte.output.off"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3732
    const/4 v3, 0x4

    new-array v0, v3, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_0

    .line 3733
    .restart local v23    # "tmp":[B
    sget-object v3, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v4, 0x140800f

    const/16 v26, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v3, v4, v0, v1}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    goto :goto_0

    .line 3735
    .end local v23    # "tmp":[B
    :cond_2
    const-string v3, "com.zte.output.on"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3737
    const/4 v3, 0x4

    new-array v0, v3, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_1

    .line 3738
    .restart local v23    # "tmp":[B
    sget-object v3, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v4, 0x1408010

    const/16 v26, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v3, v4, v0, v1}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    goto :goto_0

    .line 3740
    .end local v23    # "tmp":[B
    :cond_3
    const-string v3, "android.intent.action.ACTION_CEC_POWER_ON"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3742
    const-string v3, "MAIN_CONTROL"

    const-string v4, "========> ACTION_CEC_POWER_ON recieved"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3744
    const/4 v3, 0x4

    new-array v0, v3, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_2

    .line 3745
    .restart local v23    # "tmp":[B
    sget-object v3, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v4, 0x140800e

    const/16 v26, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v3, v4, v0, v1}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    goto :goto_0

    .line 3747
    .end local v23    # "tmp":[B
    :cond_4
    const-string v3, "android.intent.action.ACTION_CEC_POWER_OFF"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3749
    const-string v3, "MAIN_CONTROL"

    const-string v4, "========> ACTION_CEC_POWER_OFF recieved"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3751
    const/4 v3, 0x4

    new-array v0, v3, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_3

    .line 3752
    .restart local v23    # "tmp":[B
    sget-object v3, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v4, 0x140800e

    const/16 v26, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v3, v4, v0, v1}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    goto/16 :goto_0

    .line 3753
    .end local v23    # "tmp":[B
    :cond_5
    const-string v3, "com.zte.factory.reset"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3754
    const-string v3, "MAIN_CONTROL"

    const-string v4, "========> reset the factory..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3755
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3756
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v3

    iget-object v3, v3, Lcom/stbmc/maincontrol/McService;->mcServiceAppMgmtHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v17

    .line 3757
    .local v17, "msg":Landroid/os/Message;
    const-string v3, "reset_caller"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stbmc/maincontrol/McService;->access$3902(Ljava/lang/String;)Ljava/lang/String;

    .line 3758
    const/16 v3, 0x112

    move-object/from16 v0, v17

    iput v3, v0, Landroid/os/Message;->what:I

    .line 3759
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v3

    iget-object v3, v3, Lcom/stbmc/maincontrol/McService;->mcServiceAppMgmtHandler:Landroid/os/Handler;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 3761
    .end local v17    # "msg":Landroid/os/Message;
    :cond_6
    const-string v3, "com.cm.stb.LANUCHER_PLATFORM_USER_CHANGE"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3762
    const-string v3, "MAIN_CONTROL"

    const-string v4, "========> com.cm.stb.LANUCHER_PLATFORM_USER_CHANGE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3763
    const-string v25, ""

    .line 3764
    .local v25, "username":Ljava/lang/String;
    const-string v18, ""

    .line 3765
    .local v18, "password":Ljava/lang/String;
    const-string v3, "Username"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 3766
    const-string v3, "Password"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3768
    const-string v3, "MAIN_CONTROL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "========> username:"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, ", password:"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3771
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$3600()Lcommon/android/mscpcfg/McspCfgmanager;

    move-result-object v3

    const-string v4, "Common"

    const-string v26, "ServicePwd"

    const-string v27, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v3, v4, v0, v1}, Lcommon/android/mscpcfg/McspCfgmanager;->GetString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3772
    .local v12, "cfgServicePwd":Ljava/lang/String;
    const-string v3, "MAIN_CONTROL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "cfgServicePwd = "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3774
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3776
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$3600()Lcommon/android/mscpcfg/McspCfgmanager;

    move-result-object v3

    const-string v4, "Common"

    const-string v26, "ServicePwd"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v3, v4, v0, v1}, Lcommon/android/mscpcfg/McspCfgmanager;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 3779
    :cond_7
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$3600()Lcommon/android/mscpcfg/McspCfgmanager;

    move-result-object v3

    const-string v4, "Common"

    const-string v26, "ServiceUser"

    const-string v27, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v3, v4, v0, v1}, Lcommon/android/mscpcfg/McspCfgmanager;->GetString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3780
    .local v13, "cfgServiceUser":Ljava/lang/String;
    const-string v3, "MAIN_CONTROL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "cfgServiceUser = "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3782
    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3784
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$3600()Lcommon/android/mscpcfg/McspCfgmanager;

    move-result-object v3

    const-string v4, "Common"

    const-string v26, "ServiceUser"

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v3, v4, v0, v1}, Lcommon/android/mscpcfg/McspCfgmanager;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3786
    .end local v12    # "cfgServicePwd":Ljava/lang/String;
    .end local v13    # "cfgServiceUser":Ljava/lang/String;
    .end local v18    # "password":Ljava/lang/String;
    .end local v25    # "username":Ljava/lang/String;
    :cond_8
    const-string v3, "com.zte.server.poweroff"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3787
    const-string v3, "MAIN_CONTROL"

    const-string v4, "========> com.zte.server.poweroff recieved"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3789
    const/4 v3, 0x4

    new-array v0, v3, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_4

    .line 3790
    .restart local v23    # "tmp":[B
    sget-object v3, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v4, 0x140800e

    const/16 v26, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v3, v4, v0, v1}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    goto/16 :goto_0

    .line 3792
    .end local v23    # "tmp":[B
    :cond_9
    const-string v3, "android.intent.action.OUTPUTMODE_CHANGE"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 3793
    const-string v3, "MAIN_CONTROL"

    const-string v4, "[DingQin] --> Received broadcast android.intent.action.OUTPUTMODE_CHANGE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3794
    const-string v3, "output_mode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3795
    .local v22, "strOutputMode":Ljava/lang/String;
    const-string v3, "MAIN_CONTROL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[DingQin] doMcServiceReceiverProc22 --> strOutputMode = "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3797
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$3600()Lcommon/android/mscpcfg/McspCfgmanager;

    move-result-object v4

    const-string v26, "Common"

    const-string v27, "TVStandard"

    const/16 v28, -0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v4, v0, v1, v2}, Lcommon/android/mscpcfg/McspCfgmanager;->GetInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/stbmc/maincontrol/McService;->access$4002(Lcom/stbmc/maincontrol/McService;I)I

    .line 3798
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$3600()Lcommon/android/mscpcfg/McspCfgmanager;

    move-result-object v4

    const-string v26, "Common"

    const-string v27, "ScanFreq"

    const/16 v28, -0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v4, v0, v1, v2}, Lcommon/android/mscpcfg/McspCfgmanager;->GetInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/stbmc/maincontrol/McService;->access$4102(Lcom/stbmc/maincontrol/McService;I)I

    .line 3799
    const-string v3, "MAIN_CONTROL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[DingQin] --> iOldTVStandard = "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/stbmc/maincontrol/McService;->access$4000(Lcom/stbmc/maincontrol/McService;)I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, ", iOldScanFreq = "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/stbmc/maincontrol/McService;->access$4100(Lcom/stbmc/maincontrol/McService;)I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3800
    const-string v3, "720p"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3801
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/stbmc/maincontrol/McService;->access$4202(Lcom/stbmc/maincontrol/McService;I)I

    .line 3802
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/stbmc/maincontrol/McService;->access$4302(Lcom/stbmc/maincontrol/McService;I)I

    .line 3819
    :cond_a
    :goto_1
    const-string v3, "MAIN_CONTROL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[DingQin] --> iNewTVStandard = "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/stbmc/maincontrol/McService;->access$4200(Lcom/stbmc/maincontrol/McService;)I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, ", iNewScanFreq = "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/stbmc/maincontrol/McService;->access$4300(Lcom/stbmc/maincontrol/McService;)I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3820
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v3}, Lcom/stbmc/maincontrol/McService;->access$2600(Lcom/stbmc/maincontrol/McService;)Lcommon/porting/MCPorting;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/stbmc/maincontrol/McService;->access$4200(Lcom/stbmc/maincontrol/McService;)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/stbmc/maincontrol/McService;->access$4300(Lcom/stbmc/maincontrol/McService;)I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/stbmc/maincontrol/McService;->access$2500(Lcom/stbmc/maincontrol/McService;II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcommon/porting/MCPorting;->MCPorting_SetResolution(I)V

    goto/16 :goto_0

    .line 3803
    :cond_b
    const-string v3, "720p50hz"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3804
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/stbmc/maincontrol/McService;->access$4202(Lcom/stbmc/maincontrol/McService;I)I

    .line 3805
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/stbmc/maincontrol/McService;->access$4302(Lcom/stbmc/maincontrol/McService;I)I

    goto/16 :goto_1

    .line 3806
    :cond_c
    const-string v3, "1080i"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3807
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/stbmc/maincontrol/McService;->access$4202(Lcom/stbmc/maincontrol/McService;I)I

    .line 3808
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/stbmc/maincontrol/McService;->access$4302(Lcom/stbmc/maincontrol/McService;I)I

    goto/16 :goto_1

    .line 3809
    :cond_d
    const-string v3, "1080i50hz"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3810
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/stbmc/maincontrol/McService;->access$4202(Lcom/stbmc/maincontrol/McService;I)I

    .line 3811
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/stbmc/maincontrol/McService;->access$4302(Lcom/stbmc/maincontrol/McService;I)I

    goto/16 :goto_1

    .line 3812
    :cond_e
    const-string v3, "1080p"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 3813
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/stbmc/maincontrol/McService;->access$4202(Lcom/stbmc/maincontrol/McService;I)I

    .line 3814
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/stbmc/maincontrol/McService;->access$4302(Lcom/stbmc/maincontrol/McService;I)I

    goto/16 :goto_1

    .line 3815
    :cond_f
    const-string v3, "1080p50hz"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3816
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/stbmc/maincontrol/McService;->access$4202(Lcom/stbmc/maincontrol/McService;I)I

    .line 3817
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/stbmc/maincontrol/McService;->access$4302(Lcom/stbmc/maincontrol/McService;I)I

    goto/16 :goto_1

    .line 3821
    .end local v22    # "strOutputMode":Ljava/lang/String;
    :cond_10
    const-string v3, "android.intent.action.OUTPUTMODE_SAVE"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3822
    const-string v3, "MAIN_CONTROL"

    const-string v4, "[DingQin] --> Received broadcast android.intent.action.OUTPUTMODE_SAVE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3823
    const-string v3, "output_mode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3824
    .restart local v22    # "strOutputMode":Ljava/lang/String;
    const-string v3, "MAIN_CONTROL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[DingQin] doMcServiceReceiverProc22 --> strOutputMode = "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3825
    const-string v3, "MAIN_CONTROL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[DingQin] --> iNewTVStandard = "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/stbmc/maincontrol/McService;->access$4200(Lcom/stbmc/maincontrol/McService;)I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, ", iNewScanFreq = "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/stbmc/maincontrol/McService;->access$4300(Lcom/stbmc/maincontrol/McService;)I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3826
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v4}, Lcom/stbmc/maincontrol/McService;->access$4200(Lcom/stbmc/maincontrol/McService;)I

    move-result v4

    if-eq v3, v4, :cond_0

    const/4 v3, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v4}, Lcom/stbmc/maincontrol/McService;->access$4300(Lcom/stbmc/maincontrol/McService;)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 3827
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$3600()Lcommon/android/mscpcfg/McspCfgmanager;

    move-result-object v3

    const-string v4, "Common"

    const-string v26, "TVStandard"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/stbmc/maincontrol/McService;->access$4200(Lcom/stbmc/maincontrol/McService;)I

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v3, v4, v0, v1}, Lcommon/android/mscpcfg/McspCfgmanager;->putInteger(Ljava/lang/String;Ljava/lang/String;I)I

    .line 3828
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$3600()Lcommon/android/mscpcfg/McspCfgmanager;

    move-result-object v3

    const-string v4, "Common"

    const-string v26, "ScanFreq"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/stbmc/maincontrol/McService;->access$4300(Lcom/stbmc/maincontrol/McService;)I

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v3, v4, v0, v1}, Lcommon/android/mscpcfg/McspCfgmanager;->putInteger(Ljava/lang/String;Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 3830
    .end local v22    # "strOutputMode":Ljava/lang/String;
    :cond_11
    const-string v3, "android.intent.action.OUTPUTMODE_CANCEL"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 3831
    const-string v3, "MAIN_CONTROL"

    const-string v4, "[DingQin] --> Received broadcast android.intent.action.OUTPUTMODE_CANCEL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3832
    const-string v3, "output_mode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3833
    .restart local v22    # "strOutputMode":Ljava/lang/String;
    const-string v3, "MAIN_CONTROL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[DingQin] doMcServiceReceiverProc22 --> strOutputMode = "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3834
    const-string v3, "MAIN_CONTROL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[DingQin] --> iOldTVStandard = "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/stbmc/maincontrol/McService;->access$4000(Lcom/stbmc/maincontrol/McService;)I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, ", iOldScanFreq = "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/stbmc/maincontrol/McService;->access$4100(Lcom/stbmc/maincontrol/McService;)I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3835
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v3}, Lcom/stbmc/maincontrol/McService;->access$2600(Lcom/stbmc/maincontrol/McService;)Lcommon/porting/MCPorting;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/stbmc/maincontrol/McService;->access$4000(Lcom/stbmc/maincontrol/McService;)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/stbmc/maincontrol/McService;->access$4100(Lcom/stbmc/maincontrol/McService;)I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/stbmc/maincontrol/McService;->access$2500(Lcom/stbmc/maincontrol/McService;II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcommon/porting/MCPorting;->MCPorting_SetResolution(I)V

    .line 3836
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v4}, Lcom/stbmc/maincontrol/McService;->access$4000(Lcom/stbmc/maincontrol/McService;)I

    move-result v4

    if-eq v3, v4, :cond_0

    const/4 v3, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v4}, Lcom/stbmc/maincontrol/McService;->access$4100(Lcom/stbmc/maincontrol/McService;)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 3837
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$3600()Lcommon/android/mscpcfg/McspCfgmanager;

    move-result-object v3

    const-string v4, "Common"

    const-string v26, "TVStandard"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/stbmc/maincontrol/McService;->access$4000(Lcom/stbmc/maincontrol/McService;)I

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v3, v4, v0, v1}, Lcommon/android/mscpcfg/McspCfgmanager;->putInteger(Ljava/lang/String;Ljava/lang/String;I)I

    .line 3838
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$3600()Lcommon/android/mscpcfg/McspCfgmanager;

    move-result-object v3

    const-string v4, "Common"

    const-string v26, "ScanFreq"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/stbmc/maincontrol/McService;->access$4100(Lcom/stbmc/maincontrol/McService;)I

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v3, v4, v0, v1}, Lcommon/android/mscpcfg/McspCfgmanager;->putInteger(Ljava/lang/String;Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 3850
    .end local v22    # "strOutputMode":Ljava/lang/String;
    :cond_12
    const-string v3, "com.zte.ntperr"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 3851
    const-string v3, "MAIN_CONTROL"

    const-string v4, "[DingQin] --> Received broadcast com.zte.ntperr"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3852
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v3

    iget-object v3, v3, Lcom/stbmc/maincontrol/McService;->mPromptServiceHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v17

    .line 3854
    .restart local v17    # "msg":Landroid/os/Message;
    const/4 v3, 0x1

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->Is_net_zte_refactor()I

    move-result v4

    if-ne v3, v4, :cond_13

    .line 3855
    const/4 v3, 0x4

    new-array v5, v3, [B

    .line 3856
    .local v5, "aData":[B
    const/4 v6, 0x4

    .line 3857
    .local v6, "aDataLen":I
    const/4 v3, 0x4

    new-array v7, v3, [B

    .line 3858
    .local v7, "aReply":[B
    const/4 v3, 0x1

    new-array v8, v3, [I

    .line 3860
    .local v8, "aReplyLen":[I
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$4400()Lcom/stbmc/maincontrol/NetworkHelper;

    move-result-object v3

    const v4, 0x1409001

    invoke-virtual/range {v3 .. v8}, Lcom/stbmc/maincontrol/NetworkHelper;->invoke(I[BI[B[I)I

    move-result v20

    .line 3861
    .local v20, "result":I
    const/4 v3, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_0

    .line 3865
    .end local v5    # "aData":[B
    .end local v6    # "aDataLen":I
    .end local v7    # "aReply":[B
    .end local v8    # "aReplyLen":[I
    .end local v20    # "result":I
    :cond_13
    const/16 v3, 0x15

    move-object/from16 v0, v17

    iput v3, v0, Landroid/os/Message;->what:I

    .line 3866
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v3

    iget-object v3, v3, Lcom/stbmc/maincontrol/McService;->mPromptServiceHandler:Landroid/os/Handler;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 3869
    .end local v17    # "msg":Landroid/os/Message;
    :cond_14
    const-string v3, "com.zte.liaoningtest"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3870
    const-string v3, "MAIN_CONTROL"

    const-string v4, "[DingQin] --> Received broadcast com.zte.liaoningtest"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3872
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/stbmc/maincontrol/McService$4;->this$0:Lcom/stbmc/maincontrol/McService;

    const-string v26, "RadioActivity"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/stbmc/maincontrol/McService;->TopActivityCheck(Ljava/lang/String;)Z

    move-result v4

    if-ne v3, v4, :cond_0

    .line 3875
    :try_start_0
    const-string v15, "input keyevent 4"

    .line 3876
    .local v15, "keyCommand":Ljava/lang/String;
    const-string v3, "MAIN_CONTROL"

    const-string v4, "####====> runtime.getRuntime()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3877
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v21

    .line 3878
    .local v21, "runtime":Ljava/lang/Runtime;
    const-string v3, "MAIN_CONTROL"

    const-string v4, "####====> runtime.exec input keyevent 4 begin."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3879
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v19

    .line 3880
    .local v19, "proc":Ljava/lang/Process;
    const-string v3, "MAIN_CONTROL"

    const-string v4, "####====> runtime.exec input keyevent 4 end."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3881
    .end local v15    # "keyCommand":Ljava/lang/String;
    .end local v19    # "proc":Ljava/lang/Process;
    .end local v21    # "runtime":Ljava/lang/Runtime;
    :catch_0
    move-exception v14

    .line 3884
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 3885
    const-string v3, "MAIN_CONTROL"

    const-string v4, "####====> runtime.exec input keyevent 4 error."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3889
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_15
    const-string v3, "TVBOX_BMC_FINISH"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 3891
    const-string v3, "MAIN_CONTROL"

    const-string v4, "####====> TVBOX_BMC_FINISH received"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3893
    const-string v3, "sys.zte.FJDXZcState"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3895
    const-string v3, "MAIN_CONTROL"

    const-string v4, "####====> sys.zte.FJDXZcState set 2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3896
    const-string v3, "sys.zte.FJDXZcState"

    const-string v4, "2"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3899
    :cond_16
    const-string v3, "com.IMyService.GetAccount"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3900
    const-string v3, "ACCOUNT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3901
    .local v10, "account":Ljava/lang/String;
    const-string v3, "MAIN_CONTROL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "####====> com.IMyService.GetAccount received, account = "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3903
    const/16 v6, 0x100

    .line 3904
    .restart local v6    # "aDataLen":I
    new-array v5, v6, [B

    .line 3905
    .restart local v5    # "aData":[B
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 3906
    .local v9, "aDataTmp":[B
    array-length v0, v9

    move/from16 v16, v0

    .line 3907
    .local v16, "lenTmp":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v16

    invoke-static {v9, v3, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3908
    sget-object v3, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v4, 0x140801e

    invoke-virtual {v3, v4, v5, v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    goto/16 :goto_0

    .line 3732
    nop

    :array_0
    .array-data 1
        0x7t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 3737
    :array_1
    .array-data 1
        0x8t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 3744
    :array_2
    .array-data 1
        0x8t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 3751
    :array_3
    .array-data 1
        0x7t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 3789
    :array_4
    .array-data 1
        0x9t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
