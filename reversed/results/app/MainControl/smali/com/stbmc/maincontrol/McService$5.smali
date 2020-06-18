.class Lcom/stbmc/maincontrol/McService$5;
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
    .line 3956
    iput-object p1, p0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 73
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3959
    new-instance v69, Ljava/lang/Throwable;

    invoke-direct/range {v69 .. v69}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual/range {v69 .. v69}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v69

    const/16 v70, 0x0

    aget-object v61, v69, v70

    .line 3960
    .local v61, "trace":Ljava/lang/StackTraceElement;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 3961
    .local v9, "action":Ljava/lang/String;
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "get broadcase receiver action = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3963
    const-string v36, "0"

    .line 3964
    .local v36, "mauto":Ljava/lang/String;
    const-string v18, "0"

    .line 3967
    .local v18, "iGatewayBuildin":Ljava/lang/String;
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, " doMcServiceReceiverProc action = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3968
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, " doMcServiceReceiverProc get broadcase receiver refactor = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->Is_net_zte_refactor()I

    move-result v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3969
    const-string v69, "com.zte.dns_error"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_2

    .line 3970
    const-string v69, "Common"

    const-string v70, "MarketCode"

    invoke-static/range {v69 .. v70}, Lcom/stbmc/maincontrol/McService;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    .line 3971
    .local v25, "imarketCode":I
    const-string v69, "Common"

    const-string v70, "OperatorsCode"

    invoke-static/range {v69 .. v70}, Lcom/stbmc/maincontrol/McService;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    .line 3972
    .local v30, "ioperatorsCode":I
    const/16 v69, 0x1f

    move/from16 v0, v69

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    const/16 v69, 0x62

    move/from16 v0, v69

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v69, 0x1

    move/from16 v0, v69

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    .line 3973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/McService;->access$4500(Lcom/stbmc/maincontrol/McService;)V

    .line 4666
    .end local v25    # "imarketCode":I
    .end local v30    # "ioperatorsCode":I
    :cond_1
    :goto_0
    return-void

    .line 3976
    :cond_2
    const-string v69, "Common.MC.MountISO"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_3

    .line 3977
    const-string v69, "ISOFilePath"

    move-object/from16 v0, p2

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3978
    .local v32, "isoFilePath":Ljava/lang/String;
    const-string v69, "ISOMountPath"

    move-object/from16 v0, p2

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 3979
    .local v33, "isoMountPath":Ljava/lang/String;
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "[DingQin] -- doMcServiceReceiverProc --> Common.MC.MountISO -- isoFilePath = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, ", isoMountPath = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3980
    const/16 v7, 0x400

    .line 3981
    .local v7, "aDataLen":I
    new-array v6, v7, [B

    .line 3986
    .local v6, "aData":[B
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string v70, ":"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 3987
    .local v8, "aDataTmp":[B
    array-length v0, v8

    move/from16 v34, v0

    .line 3988
    .local v34, "lenTmp":I
    const/16 v69, 0x0

    const/16 v70, 0x0

    move/from16 v0, v69

    move/from16 v1, v70

    move/from16 v2, v34

    invoke-static {v8, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3989
    sget-object v69, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v70, 0x1408011

    move-object/from16 v0, v69

    move/from16 v1, v70

    invoke-virtual {v0, v1, v6, v7}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    goto/16 :goto_0

    .line 3995
    .end local v6    # "aData":[B
    .end local v7    # "aDataLen":I
    .end local v8    # "aDataTmp":[B
    .end local v32    # "isoFilePath":Ljava/lang/String;
    .end local v33    # "isoMountPath":Ljava/lang/String;
    .end local v34    # "lenTmp":I
    :cond_3
    const-string v69, "B860AV2.SetRouteTable"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_4

    .line 3996
    const-string v69, "MAIN_CONTROL"

    const-string v70, "received broadcast B860AV2.SetRouteTable"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3997
    const-string v69, "cmd"

    move-object/from16 v0, p2

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3998
    .local v11, "cmd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    invoke-static {v0, v11}, Lcom/stbmc/maincontrol/McService;->access$4600(Lcom/stbmc/maincontrol/McService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3999
    .end local v11    # "cmd":Ljava/lang/String;
    :cond_4
    const-string v69, "com.zte.autostandby"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_9

    .line 4000
    const-string v69, "time"

    move-object/from16 v0, p2

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 4001
    .local v54, "time":Ljava/lang/String;
    const/16 v69, 0x4

    move/from16 v0, v69

    new-array v0, v0, [B

    move-object/from16 v45, v0

    .line 4002
    .local v45, "resultInfo":[B
    if-eqz v54, :cond_7

    .line 4004
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "com.zte.autostandby, getStringExtra, time = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4017
    :cond_5
    :goto_1
    if-eqz v54, :cond_6

    .line 4019
    const-string v69, "Common"

    const-string v70, "MarketCode"

    invoke-static/range {v69 .. v70}, Lcom/stbmc/maincontrol/McService;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    .line 4020
    .restart local v25    # "imarketCode":I
    const-string v69, "Common"

    const-string v70, "OperatorsCode"

    invoke-static/range {v69 .. v70}, Lcom/stbmc/maincontrol/McService;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    .line 4021
    .restart local v30    # "ioperatorsCode":I
    const/16 v69, 0x63

    move/from16 v0, v25

    move/from16 v1, v69

    if-ne v0, v1, :cond_8

    const/16 v69, 0xa

    move/from16 v0, v30

    move/from16 v1, v69

    if-ne v0, v1, :cond_8

    .line 4024
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$3600()Lcommon/android/mscpcfg/McspCfgmanager;

    move-result-object v69

    const-string v70, "Common"

    const-string v71, "KeyControlTime"

    move-object/from16 v0, v69

    move-object/from16 v1, v70

    move-object/from16 v2, v71

    move-object/from16 v3, v54

    invoke-virtual {v0, v1, v2, v3}, Lcommon/android/mscpcfg/McspCfgmanager;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 4031
    :goto_2
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v69

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v69

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v45

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4033
    .end local v25    # "imarketCode":I
    .end local v30    # "ioperatorsCode":I
    :cond_6
    sget-object v69, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v70, 0x142c004

    const/16 v71, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v45

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    goto/16 :goto_0

    .line 4008
    :cond_7
    const-string v69, "time"

    const/16 v70, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v69

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 4009
    .local v24, "iTime":I
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "com.zte.autostandby, getIntExtra, iTime = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4010
    const/16 v69, -0x1

    move/from16 v0, v69

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    .line 4012
    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v54

    .line 4013
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "com.zte.autostandby, getIntExtra, time = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4029
    .end local v24    # "iTime":I
    .restart local v25    # "imarketCode":I
    .restart local v30    # "ioperatorsCode":I
    :cond_8
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$3600()Lcommon/android/mscpcfg/McspCfgmanager;

    move-result-object v69

    const-string v70, "Stbmc"

    const-string v71, "AutoStandByTime"

    move-object/from16 v0, v69

    move-object/from16 v1, v70

    move-object/from16 v2, v71

    move-object/from16 v3, v54

    invoke-virtual {v0, v1, v2, v3}, Lcommon/android/mscpcfg/McspCfgmanager;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4035
    .end local v25    # "imarketCode":I
    .end local v30    # "ioperatorsCode":I
    .end local v45    # "resultInfo":[B
    .end local v54    # "time":Ljava/lang/String;
    :cond_9
    const-string v69, "com.zte.android.SetBestResolutionOK"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_a

    .line 4037
    const-string v69, "MAIN_CONTROL"

    const-string v70, "[DingQin] --> Received broadcast com.zte.android.SetBestResolutionOK"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    invoke-static/range {v69 .. v70}, Lcom/stbmc/maincontrol/McService;->access$4700(Lcom/stbmc/maincontrol/McService;Z)V

    .line 4044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v70, v0

    invoke-static/range {v70 .. v70}, Lcom/stbmc/maincontrol/McService;->access$4800(Lcom/stbmc/maincontrol/McService;)I

    move-result v70

    invoke-static/range {v69 .. v70}, Lcom/stbmc/maincontrol/McService;->access$4900(Lcom/stbmc/maincontrol/McService;I)V

    goto/16 :goto_0

    .line 4047
    :cond_a
    const-string v69, "start.activity.conflict"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_b

    .line 4048
    const-string v69, "MAIN_CONTROL"

    const-string v70, "[DingQin] --> Received broadcast start.activity.conflict"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4049
    new-instance v69, Lcom/stbmc/maincontrol/McService$5$1;

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/stbmc/maincontrol/McService$5$1;-><init>(Lcom/stbmc/maincontrol/McService$5;)V

    .line 4067
    invoke-virtual/range {v69 .. v69}, Lcom/stbmc/maincontrol/McService$5$1;->start()V

    .line 4069
    new-instance v69, Lcom/stbmc/maincontrol/McService$5$2;

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/stbmc/maincontrol/McService$5$2;-><init>(Lcom/stbmc/maincontrol/McService$5;)V

    .line 4077
    invoke-virtual/range {v69 .. v69}, Lcom/stbmc/maincontrol/McService$5$2;->start()V

    .line 4079
    new-instance v69, Lcom/stbmc/maincontrol/McService$5$3;

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/stbmc/maincontrol/McService$5$3;-><init>(Lcom/stbmc/maincontrol/McService$5;)V

    .line 4087
    invoke-virtual/range {v69 .. v69}, Lcom/stbmc/maincontrol/McService$5$3;->start()V

    .line 4089
    new-instance v69, Lcom/stbmc/maincontrol/McService$5$4;

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/stbmc/maincontrol/McService$5$4;-><init>(Lcom/stbmc/maincontrol/McService$5;)V

    .line 4097
    invoke-virtual/range {v69 .. v69}, Lcom/stbmc/maincontrol/McService$5$4;->start()V

    goto/16 :goto_0

    .line 4100
    :cond_b
    const-string v69, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_c

    .line 4101
    const-string v69, "wifi_state"

    const/16 v70, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v69

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v68

    .line 4102
    .local v68, "wifiState":I
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "[DingQin] Received broadcast WIFI_STATE_CHANGED_ACTION -- wifiState = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4103
    const/16 v69, 0x3

    move/from16 v0, v69

    move/from16 v1, v68

    if-ne v0, v1, :cond_1

    .line 4104
    const-string v69, "MAIN_CONTROL"

    const-string v70, "[DingQin] doMcServiceReceiverProc --> WIFI_STATE_ENABLED"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/McService;->access$5000(Lcom/stbmc/maincontrol/McService;)V

    goto/16 :goto_0

    .line 4107
    .end local v68    # "wifiState":I
    :cond_c
    const-string v69, "com.zte.combkey.set_resolution"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_d

    .line 4109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/McService;->access$2600(Lcom/stbmc/maincontrol/McService;)Lcommon/porting/MCPorting;

    move-result-object v69

    const/16 v70, 0x6

    invoke-virtual/range {v69 .. v70}, Lcommon/porting/MCPorting;->MCPorting_SetResolution(I)V

    .line 4110
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$3600()Lcommon/android/mscpcfg/McspCfgmanager;

    move-result-object v69

    const-string v70, "Common"

    const-string v71, "TVStandard"

    const/16 v72, 0x4

    invoke-virtual/range {v69 .. v72}, Lcommon/android/mscpcfg/McspCfgmanager;->putInteger(Ljava/lang/String;Ljava/lang/String;I)I

    .line 4111
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$3600()Lcommon/android/mscpcfg/McspCfgmanager;

    move-result-object v69

    const-string v70, "Common"

    const-string v71, "HDMIAdaptiveMode"

    const/16 v72, 0x0

    invoke-virtual/range {v69 .. v72}, Lcommon/android/mscpcfg/McspCfgmanager;->putInteger(Ljava/lang/String;Ljava/lang/String;I)I

    .line 4112
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v46

    .line 4115
    .local v46, "rt":Ljava/lang/Runtime;
    :try_start_0
    const-string v69, "MAIN_CONTROL"

    const-string v70, "com.zte.combkey.set_resolution finished ,start reboot.... "

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4116
    const-wide/16 v69, 0x7d0

    invoke-static/range {v69 .. v70}, Ljava/lang/Thread;->sleep(J)V

    .line 4117
    const-string v69, "busybox reboot"

    move-object/from16 v0, v46

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4119
    :catch_0
    move-exception v12

    .line 4121
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 4123
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v46    # "rt":Ljava/lang/Runtime;
    :cond_d
    const-string v69, "com.zte.combkey.start_setting"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_e

    .line 4124
    const-string v69, "MAIN_CONTROL"

    const-string v70, "case com.zte.combkey.start_setting"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/McService;->access$1700(Lcom/stbmc/maincontrol/McService;)V

    goto/16 :goto_0

    .line 4126
    :cond_e
    const-string v69, "android.net.wifi.supplicant.STATE_CHANGE"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_f

    .line 4127
    const-string v69, "MAIN_CONTROL"

    const-string v70, "[DingQin] Received broadcast SUPPLICANT_STATE_CHANGED_ACTION"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/McService;->access$5000(Lcom/stbmc/maincontrol/McService;)V

    goto/16 :goto_0

    .line 4129
    :cond_f
    const-string v69, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_10

    .line 4130
    const-string v69, "MAIN_CONTROL"

    const-string v70, "[DingQin] Received broadcast NETWORK_STATE_CHANGED_ACTION"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/McService;->access$5000(Lcom/stbmc/maincontrol/McService;)V

    goto/16 :goto_0

    .line 4133
    :cond_10
    const-string v69, "zte.stb.action.autoadapthdmi"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_13

    .line 4134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Lcom/stbmc/maincontrol/McService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v43

    .line 4135
    .local v43, "resolver":Landroid/content/ContentResolver;
    const/16 v21, 0x3c

    .line 4136
    .local v21, "iScanFreqHZ":I
    const-string v69, "Common"

    const-string v70, "AutoOutputFlag"

    invoke-static/range {v69 .. v70}, Lcom/stbmc/maincontrol/McService;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 4137
    .local v17, "iAutoOutputFlag":I
    const-string v69, "Common"

    const-string v70, "TVStandard"

    invoke-static/range {v69 .. v70}, Lcom/stbmc/maincontrol/McService;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 4138
    .local v23, "iTVStandard":I
    const-string v69, "Common"

    const-string v70, "ScanFreq"

    invoke-static/range {v69 .. v70}, Lcom/stbmc/maincontrol/McService;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 4139
    .local v20, "iScanFreq":I
    const/16 v69, 0x1

    move/from16 v0, v69

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 4141
    const/16 v21, 0x32

    .line 4144
    :cond_11
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "iAutoOutputFlag = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, "iTVStandard =  "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, "iScanFreq = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4145
    const/16 v69, 0x3

    move/from16 v0, v69

    move/from16 v1, v17

    if-eq v0, v1, :cond_12

    const/16 v69, 0x2

    move/from16 v0, v69

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 4147
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/McService;->access$2600(Lcom/stbmc/maincontrol/McService;)Lcommon/porting/MCPorting;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v23

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/stbmc/maincontrol/McService;->access$2500(Lcom/stbmc/maincontrol/McService;II)I

    move-result v70

    invoke-virtual/range {v69 .. v70}, Lcommon/porting/MCPorting;->MCPorting_SetResolution(I)V

    goto/16 :goto_0

    .line 4151
    .end local v17    # "iAutoOutputFlag":I
    .end local v20    # "iScanFreq":I
    .end local v21    # "iScanFreqHZ":I
    .end local v23    # "iTVStandard":I
    .end local v43    # "resolver":Landroid/content/ContentResolver;
    :cond_13
    const-string v69, "com.StbMc.BwActivityAct"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_14

    .line 4153
    const-string v69, "[%s.%s] Recv: %s."

    const/16 v70, 0x3

    move/from16 v0, v70

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v70, v0

    const/16 v71, 0x0

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v72

    aput-object v72, v70, v71

    const/16 v71, 0x1

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v72

    aput-object v72, v70, v71

    const/16 v71, 0x2

    const-string v72, "com.ztestb.cap.tv.start"

    aput-object v72, v70, v71

    invoke-static/range {v69 .. v70}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4154
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->startIPTV()V

    goto/16 :goto_0

    .line 4156
    :cond_14
    const-string v69, "ztestb.iptv.ztebw.exit.resp"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_15

    .line 4158
    const-string v69, "MAIN_CONTROL"

    const-string v70, "========> McService.startMcActivityReceiver:ztestb.iptv.ztebw.exit"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4160
    new-instance v27, Landroid/content/Intent;

    invoke-direct/range {v27 .. v27}, Landroid/content/Intent;-><init>()V

    .line 4161
    .local v27, "intentExitIptv":Landroid/content/Intent;
    const-string v69, "com.ztestb.cap.tv.stop"

    move-object/from16 v0, v27

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4162
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/stbmc/maincontrol/McService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4164
    .end local v27    # "intentExitIptv":Landroid/content/Intent;
    :cond_15
    const-string v69, "com.ztestb.cap.tv.running"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_16

    .line 4166
    const-string v69, "[%s.%s] Recv: %s."

    const/16 v70, 0x3

    move/from16 v0, v70

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v70, v0

    const/16 v71, 0x0

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v72

    aput-object v72, v70, v71

    const/16 v71, 0x1

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v72

    aput-object v72, v70, v71

    const/16 v71, 0x2

    const-string v72, "com.ztestb.cap.tv.running"

    aput-object v72, v70, v71

    invoke-static/range {v69 .. v70}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/McService;->access$5100(Lcom/stbmc/maincontrol/McService;)V

    goto/16 :goto_0

    .line 4169
    :cond_16
    const-string v69, "com.android.tv.bwloadok"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_17

    .line 4171
    const-string v69, "MAIN_CONTROL"

    const-string v70, "========> McService.startMcActivityReceiver:com.android.tv.bwloadok"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/McService;->access$5200(Lcom/stbmc/maincontrol/McService;)V

    goto/16 :goto_0

    .line 4175
    :cond_17
    const-string v69, "common.customdialog.POSTEVENT"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_18

    .line 4178
    const-string v69, "MAIN_CONTROL"

    const-string v70, "========> McService.startMcActivityReceiver:common.customdialog.POSTEVENT"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4179
    const-string v69, "PostInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 4180
    .local v10, "bundle":Landroid/os/Bundle;
    const-string v69, "Result"

    move-object/from16 v0, v69

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 4181
    .local v16, "i":I
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "bundle.getInt(CustomDialogActivity.Bundle_RESULT----->"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v69, v0

    const-string v70, "dialogId"

    move-object/from16 v0, v70

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v70

    move-object/from16 v0, v69

    move/from16 v1, v70

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/stbmc/maincontrol/McService;->access$5300(Lcom/stbmc/maincontrol/McService;II)V

    goto/16 :goto_0

    .line 4186
    .end local v10    # "bundle":Landroid/os/Bundle;
    .end local v16    # "i":I
    :cond_18
    const-string v69, "MC_POST_SERIALNO"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_19

    .line 4188
    const-string v69, "MAIN_CONTROL"

    const-string v70, "========> McService.startMcActivityReceiver:MC_POST_SERIALNO"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4189
    const-string v69, "SerialInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 4190
    .restart local v10    # "bundle":Landroid/os/Bundle;
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "========> McService receive serialNo="

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, "serialNo"

    move-object/from16 v0, v71

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, "\n"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v69, v0

    const-string v70, "serialNo"

    move-object/from16 v0, v70

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Lcom/stbmc/maincontrol/McService;->access$5400(Lcom/stbmc/maincontrol/McService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4193
    .end local v10    # "bundle":Landroid/os/Bundle;
    :cond_19
    const-string v69, "Common.MC.MountSamba"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_1a

    .line 4194
    const-string v69, "samba_ip"

    move-object/from16 v0, p2

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 4195
    .local v47, "samba_ip":Ljava/lang/String;
    const-string v69, "user_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    .line 4196
    .local v64, "user_name":Ljava/lang/String;
    const-string v69, "user_passwd"

    move-object/from16 v0, p2

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v65

    .line 4197
    .local v65, "user_passwd":Ljava/lang/String;
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "doMcServiceReceiverProc --> Common.MC.MountSamba, samba_ip = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, ", user_name = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, ", user_passwd = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4198
    const/16 v7, 0x400

    .line 4199
    .restart local v7    # "aDataLen":I
    new-array v6, v7, [B

    .line 4200
    .restart local v6    # "aData":[B
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string v70, ":"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string v70, ":"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 4201
    .restart local v8    # "aDataTmp":[B
    array-length v0, v8

    move/from16 v34, v0

    .line 4202
    .restart local v34    # "lenTmp":I
    const/16 v69, 0x0

    const/16 v70, 0x0

    move/from16 v0, v69

    move/from16 v1, v70

    move/from16 v2, v34

    invoke-static {v8, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4204
    sget-object v69, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v70, 0x1408015

    move-object/from16 v0, v69

    move/from16 v1, v70

    invoke-virtual {v0, v1, v6, v7}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    .line 4207
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$3600()Lcommon/android/mscpcfg/McspCfgmanager;

    move-result-object v69

    const-string v70, "Mc_Samba"

    const-string v71, "samba_ip"

    move-object/from16 v0, v69

    move-object/from16 v1, v70

    move-object/from16 v2, v71

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Lcommon/android/mscpcfg/McspCfgmanager;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 4208
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$3600()Lcommon/android/mscpcfg/McspCfgmanager;

    move-result-object v69

    const-string v70, "Mc_Samba"

    const-string v71, "user_name"

    move-object/from16 v0, v69

    move-object/from16 v1, v70

    move-object/from16 v2, v71

    move-object/from16 v3, v64

    invoke-virtual {v0, v1, v2, v3}, Lcommon/android/mscpcfg/McspCfgmanager;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 4209
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$3600()Lcommon/android/mscpcfg/McspCfgmanager;

    move-result-object v69

    const-string v70, "Mc_Samba"

    const-string v71, "user_passwd"

    move-object/from16 v0, v69

    move-object/from16 v1, v70

    move-object/from16 v2, v71

    move-object/from16 v3, v65

    invoke-virtual {v0, v1, v2, v3}, Lcommon/android/mscpcfg/McspCfgmanager;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 4211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, v69

    iput-boolean v0, v1, Lcom/stbmc/maincontrol/McService;->bUserCtrlSamba:Z

    goto/16 :goto_0

    .line 4213
    .end local v6    # "aData":[B
    .end local v7    # "aDataLen":I
    .end local v8    # "aDataTmp":[B
    .end local v34    # "lenTmp":I
    .end local v47    # "samba_ip":Ljava/lang/String;
    .end local v64    # "user_name":Ljava/lang/String;
    .end local v65    # "user_passwd":Ljava/lang/String;
    :cond_1a
    const-string v69, "Common.MC.UMountSamba"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_1b

    .line 4214
    const-string v69, "MAIN_CONTROL"

    const-string v70, "doMcServiceReceiverProc --> Common.MC.UMountSamba"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4215
    const/16 v7, 0x400

    .line 4216
    .restart local v7    # "aDataLen":I
    new-array v6, v7, [B

    .line 4218
    .restart local v6    # "aData":[B
    sget-object v69, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v70, 0x1408016

    move-object/from16 v0, v69

    move/from16 v1, v70

    invoke-virtual {v0, v1, v6, v7}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    .line 4220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, v69

    iput-boolean v0, v1, Lcom/stbmc/maincontrol/McService;->bUserCtrlSamba:Z

    goto/16 :goto_0

    .line 4223
    .end local v6    # "aData":[B
    .end local v7    # "aDataLen":I
    :cond_1b
    const-string v69, "com.zte.setting.started"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_1c

    .line 4224
    const/16 v7, 0x400

    .line 4225
    .restart local v7    # "aDataLen":I
    new-array v6, v7, [B

    .line 4227
    .restart local v6    # "aData":[B
    const-string v69, "MAIN_CONTROL"

    const-string v70, "sent event to C to hide OSD"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4228
    sget-object v69, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v70, 0x1408020

    move-object/from16 v0, v69

    move/from16 v1, v70

    invoke-virtual {v0, v1, v6, v7}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    goto/16 :goto_0

    .line 4230
    .end local v6    # "aData":[B
    .end local v7    # "aDataLen":I
    :cond_1c
    const-string v69, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_1f

    .line 4232
    const-string v69, "MAIN_CONTROL"

    const-string v70, "========> recieve action SCREEN_ON"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4234
    const/16 v69, 0xe11

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$600()I

    move-result v70

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_1e

    const/16 v69, 0x1

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$700()I

    move-result v70

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_1e

    .line 4235
    const-string v69, "MAIN_CONTROL"

    const-string v70, "@@@@====> market is YinninDX , reset restartTimer."

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService;->rebootTimer:Ljava/util/Timer;

    move-object/from16 v69, v0

    if-eqz v69, :cond_1d

    .line 4238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService;->rebootTimer:Ljava/util/Timer;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/util/Timer;->cancel()V

    .line 4240
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    invoke-static/range {v69 .. v70}, Lcom/stbmc/maincontrol/McService;->access$5502(Lcom/stbmc/maincontrol/McService;I)I

    .line 4241
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "@@@@====> market is YinninDX , reset showDialogTimes = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Lcom/stbmc/maincontrol/McService;->access$5500(Lcom/stbmc/maincontrol/McService;)I

    move-result v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v69, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v70

    invoke-static/range {v69 .. v71}, Lcom/stbmc/maincontrol/McService;->access$5602(Lcom/stbmc/maincontrol/McService;J)J

    .line 4243
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "@@@@====> market is YinninDX , before standby runtime is"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v71, v0

    invoke-static/range {v71 .. v71}, Lcom/stbmc/maincontrol/McService;->access$5600(Lcom/stbmc/maincontrol/McService;)J

    move-result-wide v71

    invoke-virtual/range {v70 .. v72}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4247
    :cond_1e
    const/16 v69, 0x1

    move/from16 v0, v69

    new-array v0, v0, [B

    move-object/from16 v55, v0

    .line 4248
    .local v55, "tmp":[B
    sget-object v69, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v70, 0x140800c

    const/16 v71, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v55

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    goto/16 :goto_0

    .line 4250
    .end local v55    # "tmp":[B
    :cond_1f
    const-string v69, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_20

    .line 4252
    const-string v69, "MAIN_CONTROL"

    const-string v70, "========> recieve action SCREEN_OFF"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4253
    const/16 v69, 0x1

    move/from16 v0, v69

    new-array v0, v0, [B

    move-object/from16 v55, v0

    .line 4254
    .restart local v55    # "tmp":[B
    sget-object v69, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v70, 0x140800d

    const/16 v71, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v55

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    goto/16 :goto_0

    .line 4258
    .end local v55    # "tmp":[B
    :cond_20
    const-string v69, "android.bellmann.REQUEST_USER_INFO"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_23

    .line 4259
    const-string v69, "MAIN_CONTROL"

    const-string v70, "========> Receiver for app for user info request. "

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4262
    const-string v42, "/data/etc/zc_acs.xml"

    .line 4263
    .local v42, "path":Ljava/lang/String;
    const-string v49, "99"

    .line 4264
    .local v49, "status":Ljava/lang/String;
    const-string v63, ""

    .line 4265
    .local v63, "userName":Ljava/lang/String;
    const-string v62, ""

    .line 4266
    .local v62, "userID":Ljava/lang/String;
    const-string v41, ""

    .line 4268
    .local v41, "password":Ljava/lang/String;
    :try_start_1
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v42

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4269
    .local v15, "f":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v69

    if-nez v69, :cond_22

    .line 4270
    const-string v69, "MAIN_CONTROL"

    const-string v70, "========> file not exist. "

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4272
    new-instance v28, Landroid/content/Intent;

    invoke-direct/range {v28 .. v28}, Landroid/content/Intent;-><init>()V

    .line 4273
    .local v28, "intentInfoLoad":Landroid/content/Intent;
    const-string v69, "android.bellmann.LOAD_USER_INFO"

    move-object/from16 v0, v28

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4274
    const-string v69, "userID"

    const-string v70, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v69

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4275
    const-string v69, "password"

    const-string v70, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v69

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4276
    const-string v69, "userName"

    const-string v70, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v69

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4277
    const-string v69, "status"

    const-string v70, "99"

    move-object/from16 v0, v28

    move-object/from16 v1, v69

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4278
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/stbmc/maincontrol/McService;->sendBroadcast(Landroid/content/Intent;)V

    .line 4280
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "========> userID ="

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4281
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "========> password ="

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4282
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "========> status ="

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4283
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "========> userName ="

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 4310
    .end local v15    # "f":Ljava/io/File;
    .end local v28    # "intentInfoLoad":Landroid/content/Intent;
    :catch_1
    move-exception v12

    .line 4311
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string v69, "MAIN_CONTROL"

    const-string v70, "========> read arguments from file error!"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4314
    .end local v12    # "e":Ljava/lang/Exception;
    :goto_3
    const-string v69, "Common"

    const-string v70, "ServiceUser"

    invoke-static/range {v69 .. v70}, Lcom/stbmc/maincontrol/McService;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 4315
    const-string v69, "Common"

    const-string v70, "ServicePwd"

    invoke-static/range {v69 .. v70}, Lcom/stbmc/maincontrol/McService;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 4317
    if-nez v49, :cond_21

    .line 4318
    const-string v69, "MAIN_CONTROL"

    const-string v70, "========>get status error!"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4319
    const-string v49, "99"

    .line 4322
    :cond_21
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "========> userID ="

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4323
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "========> password ="

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4324
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "========> status ="

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4325
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "========> userName ="

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4328
    new-instance v28, Landroid/content/Intent;

    invoke-direct/range {v28 .. v28}, Landroid/content/Intent;-><init>()V

    .line 4329
    .restart local v28    # "intentInfoLoad":Landroid/content/Intent;
    const-string v69, "android.bellmann.LOAD_USER_INFO"

    move-object/from16 v0, v28

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4330
    const-string v69, "userID"

    move-object/from16 v0, v28

    move-object/from16 v1, v69

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4331
    const-string v69, "password"

    move-object/from16 v0, v28

    move-object/from16 v1, v69

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4332
    const-string v69, "userName"

    move-object/from16 v0, v28

    move-object/from16 v1, v69

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4333
    const-string v69, "status"

    move-object/from16 v0, v28

    move-object/from16 v1, v69

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4334
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/stbmc/maincontrol/McService;->sendBroadcast(Landroid/content/Intent;)V

    .line 4335
    const-string v69, "MAIN_CONTROL"

    const-string v70, "read arguement finished!"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4286
    .end local v28    # "intentInfoLoad":Landroid/content/Intent;
    .restart local v15    # "f":Ljava/io/File;
    :cond_22
    :try_start_2
    const-string v69, "MAIN_CONTROL"

    const-string v70, "========> get Result from cfg. "

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4287
    const-string v69, "zc_acs"

    const-string v70, "Result"

    invoke-static/range {v69 .. v70}, Lcom/stbmc/maincontrol/McService;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 4288
    const-string v69, "zc_acs"

    const-string v70, "UserName"

    invoke-static/range {v69 .. v70}, Lcom/stbmc/maincontrol/McService;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v63

    goto/16 :goto_3

    .line 4336
    .end local v15    # "f":Ljava/io/File;
    .end local v41    # "password":Ljava/lang/String;
    .end local v42    # "path":Ljava/lang/String;
    .end local v49    # "status":Ljava/lang/String;
    .end local v62    # "userID":Ljava/lang/String;
    .end local v63    # "userName":Ljava/lang/String;
    :cond_23
    const-string v69, "android.bellmann.ADVERTISING"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_25

    .line 4338
    :try_start_3
    const-string v69, "config.LauncherMode"

    invoke-static/range {v69 .. v69}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    const-string v70, "1"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_24

    .line 4341
    new-instance v26, Landroid/content/Intent;

    invoke-direct/range {v26 .. v26}, Landroid/content/Intent;-><init>()V

    .line 4342
    .local v26, "intentAdvertising":Landroid/content/Intent;
    const/high16 v69, 0x10000000

    move-object/from16 v0, v26

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4343
    new-instance v69, Landroid/content/ComponentName;

    const-string v70, "com.funhotel.iptv"

    const-string v71, "com.funhotel.iptv.ui.MainActivity"

    invoke-direct/range {v69 .. v71}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/stbmc/maincontrol/McService;->startActivity(Landroid/content/Intent;)V

    .line 4345
    const-string v69, "MAIN_CONTROL"

    const-string v70, "Start funhotel"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 4364
    .end local v26    # "intentAdvertising":Landroid/content/Intent;
    :goto_4
    const-string v69, "prop.hunan.launcher.login"

    const-string v70, "1"

    invoke-static/range {v69 .. v70}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4350
    :cond_24
    :try_start_4
    new-instance v26, Landroid/content/Intent;

    invoke-direct/range {v26 .. v26}, Landroid/content/Intent;-><init>()V

    .line 4351
    .restart local v26    # "intentAdvertising":Landroid/content/Intent;
    const/high16 v69, 0x10000000

    move-object/from16 v0, v26

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4352
    new-instance v69, Landroid/content/ComponentName;

    const-string v70, "com.hunantv.operator"

    const-string v71, "com.starcor.hunan.SplashActivity"

    invoke-direct/range {v69 .. v71}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/stbmc/maincontrol/McService;->startActivity(Landroid/content/Intent;)V

    .line 4354
    const-string v69, "MAIN_CONTROL"

    const-string v70, "Start SplashActivity"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 4357
    .end local v26    # "intentAdvertising":Landroid/content/Intent;
    :catch_2
    move-exception v12

    .line 4359
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string v69, "MAIN_CONTROL"

    const-string v70, "Start Hunan APK Failed"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4361
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 4368
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_25
    const-string v69, "com.zte.NETDETECTDONE"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_27

    .line 4370
    const-string v69, "MAIN_CONTROL"

    const-string v70, "Net is ready, show dialog!"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4371
    const/16 v69, 0x1

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/McService;->access$5702(Z)Z

    .line 4372
    const-string v69, "LinkState"

    move-object/from16 v0, p2

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4373
    .local v5, "LinkState":Ljava/lang/String;
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "========> LinkState = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4375
    if-nez v5, :cond_26

    .line 4377
    const-string v69, "MAIN_CONTROL"

    const-string v70, "argument error: null!"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4380
    :cond_26
    const-string v69, "0"

    move-object/from16 v0, v69

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_1

    .line 4382
    const-string v69, "MAIN_CONTROL"

    const-string v70, "Delay 5s to show dialog for modem disconnecting."

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4383
    new-instance v69, Landroid/os/Handler;

    invoke-direct/range {v69 .. v69}, Landroid/os/Handler;-><init>()V

    new-instance v70, Lcom/stbmc/maincontrol/McService$5$5;

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/stbmc/maincontrol/McService$5$5;-><init>(Lcom/stbmc/maincontrol/McService$5;)V

    const-wide/16 v71, 0x1388

    invoke-virtual/range {v69 .. v72}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 4392
    .end local v5    # "LinkState":Ljava/lang/String;
    :cond_27
    const-string v69, "android.net.ethernet.ZTE.ETHERNET_STATE_CHANGE"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_31

    .line 4395
    const-string v69, "sys.com.autotest.state"

    invoke-static/range {v69 .. v69}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 4396
    const-string v69, "ro.product.gatewayBuildin"

    invoke-static/range {v69 .. v69}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4397
    const-string v69, "1"

    move-object/from16 v0, v36

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_28

    .line 4398
    const-string v69, "MAIN_CONTROL"

    const-string v70, "android.net.ethernet.ZTE.ETHERNET_STATE_CHANGE sys.com.autotest.state=1 ,do nothing."

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4400
    :cond_28
    const/16 v69, 0x1

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->Is_net_zte_refactor()I

    move-result v70

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_1

    .line 4401
    const-string v69, "MAIN_CONTROL"

    const-string v70, "========> android.net.ethernet.ZTE.ETHERNET_STATE_CHANGE!"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4404
    :try_start_5
    const-string v51, ""

    .line 4405
    .local v51, "strNetMode":Ljava/lang/String;
    const-string v52, ""

    .line 4406
    .local v52, "strNetstate":Ljava/lang/String;
    const/16 v69, 0x10

    move/from16 v0, v69

    new-array v0, v0, [B

    move-object/from16 v55, v0

    .line 4408
    .restart local v55    # "tmp":[B
    const/16 v69, 0x1

    move/from16 v0, v69

    new-array v0, v0, [B

    move-object/from16 v56, v0

    .line 4410
    .local v56, "tmp1":[B
    const/16 v69, 0x18

    move/from16 v0, v69

    new-array v0, v0, [B

    move-object/from16 v57, v0

    .line 4412
    .local v57, "tmp2":[B
    const/16 v69, 0x14

    move/from16 v0, v69

    new-array v0, v0, [B

    move-object/from16 v58, v0

    .line 4413
    .local v58, "tmp3":[B
    const/16 v69, 0x14

    move/from16 v0, v69

    new-array v0, v0, [B

    move-object/from16 v59, v0

    .line 4414
    .local v59, "tmp4":[B
    const/16 v69, 0x18

    move/from16 v0, v69

    new-array v0, v0, [B

    move-object/from16 v60, v0

    .line 4416
    .local v60, "tmp5":[B
    const-string v69, "ethernet_state"

    const/16 v70, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v69

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    .line 4417
    .local v31, "ip_state":I
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "========> ZTE.ETHERNET_STATE_CHANGE ethernet_state: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4420
    const/16 v69, 0x64

    move/from16 v0, v69

    move/from16 v1, v31

    if-ne v0, v1, :cond_29

    .line 4422
    const/16 v69, 0xf0

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v69

    const/16 v70, 0x0

    const/16 v71, 0xc

    const/16 v72, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v55

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4423
    const/16 v69, 0x1

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v69

    const/16 v70, 0x0

    const/16 v71, 0x8

    const/16 v72, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v55

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4424
    sget-object v69, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v70, 0x1408019

    const/16 v71, 0x10

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v55

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    .line 4425
    const-string v69, "MAIN_CONTROL"

    const-string v70, "android.net.ethernet.ZTE.ETHERNET_STATE_CHANGE,EVENT_IP_CONFLICT "

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 4493
    .end local v31    # "ip_state":I
    .end local v51    # "strNetMode":Ljava/lang/String;
    .end local v52    # "strNetstate":Ljava/lang/String;
    .end local v55    # "tmp":[B
    .end local v56    # "tmp1":[B
    .end local v57    # "tmp2":[B
    .end local v58    # "tmp3":[B
    .end local v59    # "tmp4":[B
    .end local v60    # "tmp5":[B
    :catch_3
    move-exception v12

    .line 4496
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 4427
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v31    # "ip_state":I
    .restart local v51    # "strNetMode":Ljava/lang/String;
    .restart local v52    # "strNetstate":Ljava/lang/String;
    .restart local v55    # "tmp":[B
    .restart local v56    # "tmp1":[B
    .restart local v57    # "tmp2":[B
    .restart local v58    # "tmp3":[B
    .restart local v59    # "tmp4":[B
    .restart local v60    # "tmp5":[B
    :cond_29
    const/16 v69, 0x65

    move/from16 v0, v69

    move/from16 v1, v31

    if-ne v0, v1, :cond_2a

    .line 4429
    const/16 v69, 0xf0

    :try_start_6
    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v69

    const/16 v70, 0x0

    const/16 v71, 0xc

    const/16 v72, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v55

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4430
    const/16 v69, 0x0

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v69

    const/16 v70, 0x0

    const/16 v71, 0x8

    const/16 v72, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v55

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4431
    sget-object v69, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v70, 0x1408019

    const/16 v71, 0x10

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v55

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    .line 4432
    const-string v69, "MAIN_CONTROL"

    const-string v70, "android.net.ethernet.ZTE.ETHERNET_STATE_CHANGE,EVENT_IP_NOT_CONFLICT "

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4434
    :cond_2a
    const/16 v69, 0x13

    move/from16 v0, v69

    move/from16 v1, v31

    if-ne v0, v1, :cond_2b

    .line 4436
    const/16 v69, 0x76

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v69

    const/16 v70, 0x0

    const/16 v71, 0xc

    const/16 v72, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v57

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4437
    const/16 v69, 0x1

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v69

    const/16 v70, 0x0

    const/16 v71, 0x8

    const/16 v72, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v57

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4438
    sget-object v69, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v70, 0x1408018

    const/16 v71, 0x18

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v57

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    .line 4439
    const-string v69, "MAIN_CONTROL"

    const-string v70, "android.net.ethernet.ZTE.ETHERNET_STATE_CHANGE,EVENT_PHY_LINK_DOWN "

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4441
    :cond_2b
    const/16 v69, 0x12

    move/from16 v0, v69

    move/from16 v1, v31

    if-ne v0, v1, :cond_2c

    .line 4443
    const/16 v69, 0x0

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v69

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v58

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4444
    const/16 v69, 0x1

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v69

    const/16 v70, 0x0

    const/16 v71, 0x4

    const/16 v72, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v58

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4445
    sget-object v69, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v70, 0x140801a

    const/16 v71, 0x14

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v58

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    .line 4446
    const-string v69, "MAIN_CONTROL"

    const-string v70, "android.net.ethernet.ZTE.ETHERNET_STATE_CHANGE,EVENT_PHY_LINK_UP "

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4450
    :cond_2c
    const-string v69, "MAIN_CONTROL"

    const-string v70, "android.net.ethernet.ZTE.ETHERNET_STATE_CHANGE,others "

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4451
    const-string v69, "1"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_1

    .line 4454
    const/16 v69, 0x14

    move/from16 v0, v69

    move/from16 v1, v31

    if-eq v0, v1, :cond_2d

    const/16 v69, 0xe

    move/from16 v0, v69

    move/from16 v1, v31

    if-eq v0, v1, :cond_2d

    const/16 v69, 0xa

    move/from16 v0, v69

    move/from16 v1, v31

    if-ne v0, v1, :cond_2e

    .line 4458
    :cond_2d
    const/16 v69, 0x0

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v69

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v59

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4459
    const/16 v69, 0x1

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v69

    const/16 v70, 0x0

    const/16 v71, 0x4

    const/16 v72, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v59

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4460
    sget-object v69, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v70, 0x1408017

    const/16 v71, 0x14

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v59

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    goto/16 :goto_0

    .line 4466
    :cond_2e
    const/16 v19, 0x0

    .line 4467
    .local v19, "iNetErrCode":I
    const-string v69, "neterrcode"

    move-object/from16 v0, p2

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 4468
    .local v50, "strNetErrCode":Ljava/lang/String;
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "========> ZTE.ETHERNET_STATE_CHANGE strNetErrCode: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4470
    if-eqz v50, :cond_2f

    const-string v69, ""

    move-object/from16 v0, v50

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_30

    .line 4472
    :cond_2f
    const-string v69, "MAIN_CONTROL"

    const-string v70, "argument error: null!Set it to 0."

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4473
    const-string v50, "0"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 4478
    :cond_30
    :try_start_7
    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result v19

    .line 4485
    :goto_5
    :try_start_8
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "========> ZTE.ETHERNET_STATE_CHANGE iNetErrCode: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4486
    invoke-static/range {v19 .. v19}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v69

    const/16 v70, 0x0

    const/16 v71, 0xc

    const/16 v72, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v60

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4487
    const/16 v69, 0x1

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v69

    const/16 v70, 0x0

    const/16 v71, 0x8

    const/16 v72, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v60

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4488
    sget-object v69, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v70, 0x1408018

    const/16 v71, 0x18

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v60

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    goto/16 :goto_0

    .line 4480
    :catch_4
    move-exception v12

    .line 4482
    .local v12, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v12}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_5

    .line 4500
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .end local v19    # "iNetErrCode":I
    .end local v31    # "ip_state":I
    .end local v50    # "strNetErrCode":Ljava/lang/String;
    .end local v51    # "strNetMode":Ljava/lang/String;
    .end local v52    # "strNetstate":Ljava/lang/String;
    .end local v55    # "tmp":[B
    .end local v56    # "tmp1":[B
    .end local v57    # "tmp2":[B
    .end local v58    # "tmp3":[B
    .end local v59    # "tmp4":[B
    .end local v60    # "tmp5":[B
    :cond_31
    const-string v69, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-nez v69, :cond_32

    const-string v69, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 4501
    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_3a

    .line 4503
    :cond_32
    const-string v69, "sys.com.autotest.state"

    invoke-static/range {v69 .. v69}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 4504
    const-string v69, "ro.product.gatewayBuildin"

    invoke-static/range {v69 .. v69}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4505
    const-string v69, "1"

    move-object/from16 v0, v36

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_33

    .line 4506
    const-string v69, "MAIN_CONTROL"

    const-string v70, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE sys.com.autotest.state=1 ,do nothing."

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4507
    :cond_33
    const-string v69, "1"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_34

    .line 4508
    const-string v69, "MAIN_CONTROL"

    const-string v70, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE ro.product.gatewayBuildin=1 ,do nothing."

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4509
    :cond_34
    const/16 v69, 0x1

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->Is_net_zte_refactor()I

    move-result v70

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_1

    .line 4510
    const-string v69, "MAIN_CONTROL"

    const-string v70, "========> android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE!"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4513
    :try_start_9
    const-string v51, ""

    .line 4514
    .restart local v51    # "strNetMode":Ljava/lang/String;
    const-string v52, ""

    .line 4515
    .restart local v52    # "strNetstate":Ljava/lang/String;
    const/16 v69, 0x18

    move/from16 v0, v69

    new-array v0, v0, [B

    move-object/from16 v55, v0

    .line 4516
    .restart local v55    # "tmp":[B
    const/16 v69, 0x14

    move/from16 v0, v69

    new-array v0, v0, [B

    move-object/from16 v56, v0

    .line 4517
    .restart local v56    # "tmp1":[B
    const-string v69, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v39

    check-cast v39, Landroid/net/NetworkInfo;

    .line 4518
    .local v39, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v39, :cond_1

    .line 4520
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "========> strNetstate22:"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v39 .. v39}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4521
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "========> CONNECTIVITY_CHANGE_IMMEDIATE net_type: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v39 .. v39}, Landroid/net/NetworkInfo;->getType()I

    move-result v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4523
    invoke-virtual/range {v39 .. v39}, Landroid/net/NetworkInfo;->getType()I

    move-result v69

    const/16 v70, 0x1

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_37

    .line 4526
    invoke-virtual/range {v39 .. v39}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v69

    sget-object v70, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v69

    move-object/from16 v1, v70

    if-ne v0, v1, :cond_35

    .line 4528
    const/16 v69, 0x1

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v69

    const/16 v70, 0x0

    const/16 v71, 0x8

    const/16 v72, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v55

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4529
    sget-object v69, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v70, 0x1408017

    const/16 v71, 0x14

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v55

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    .line 4589
    .end local v39    # "netInfo":Landroid/net/NetworkInfo;
    .end local v51    # "strNetMode":Ljava/lang/String;
    .end local v52    # "strNetstate":Ljava/lang/String;
    .end local v55    # "tmp":[B
    .end local v56    # "tmp1":[B
    :catch_5
    move-exception v12

    .line 4592
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 4533
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v39    # "netInfo":Landroid/net/NetworkInfo;
    .restart local v51    # "strNetMode":Ljava/lang/String;
    .restart local v52    # "strNetstate":Ljava/lang/String;
    .restart local v55    # "tmp":[B
    .restart local v56    # "tmp1":[B
    :cond_35
    :try_start_a
    invoke-virtual/range {v39 .. v39}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v69

    sget-object v70, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v69

    move-object/from16 v1, v70

    if-ne v0, v1, :cond_1

    .line 4535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v69, v0

    const-string v70, "wifi"

    invoke-virtual/range {v69 .. v70}, Lcom/stbmc/maincontrol/McService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/net/wifi/WifiManager;

    .line 4536
    .local v67, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v67 .. v67}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v69

    if-eqz v69, :cond_36

    .line 4538
    const-string v69, "MAIN_CONTROL"

    const-string v70, "========> Wifi is enabled show 1903 Dialog"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4540
    const/16 v69, 0x71

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v69

    const/16 v70, 0x0

    const/16 v71, 0xc

    const/16 v72, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v55

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4541
    const/16 v69, 0x1

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v69

    const/16 v70, 0x0

    const/16 v71, 0x8

    const/16 v72, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v55

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4542
    sget-object v69, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v70, 0x1408018

    const/16 v71, 0x18

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v55

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    goto/16 :goto_0

    .line 4546
    :cond_36
    const-string v69, "MAIN_CONTROL"

    const-string v70, "========> Wifi is Disabled not to show 1903 Dialog"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4547
    const/16 v69, 0x0

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v69

    const/16 v70, 0x0

    const/16 v71, 0xc

    const/16 v72, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v55

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4548
    const/16 v69, 0x1

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v69

    const/16 v70, 0x0

    const/16 v71, 0x8

    const/16 v72, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v55

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4549
    sget-object v69, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v70, 0x1408018

    const/16 v71, 0x18

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v55

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    goto/16 :goto_0

    .line 4557
    .end local v67    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_37
    invoke-virtual/range {v39 .. v39}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v69

    sget-object v70, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v69

    move-object/from16 v1, v70

    if-ne v0, v1, :cond_38

    .line 4559
    const/16 v69, 0x0

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v69

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v56

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4560
    const/16 v69, 0x1

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v69

    const/16 v70, 0x0

    const/16 v71, 0x4

    const/16 v72, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v56

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4561
    sget-object v69, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v70, 0x1408017

    const/16 v71, 0x14

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v56

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    goto/16 :goto_0

    .line 4564
    :cond_38
    invoke-virtual/range {v39 .. v39}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v69

    sget-object v70, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v69

    move-object/from16 v1, v70

    if-ne v0, v1, :cond_1

    .line 4566
    const/4 v14, 0x0

    .line 4568
    .local v14, "errno":I
    const-string v69, "net.zte.eth.errorno"

    invoke-static/range {v69 .. v69}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 4569
    .local v53, "strerrno":Ljava/lang/String;
    const-string v69, ""

    move-object/from16 v0, v53

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_39

    .line 4570
    const-string v53, "0"
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 4575
    :cond_39
    :try_start_b
    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    move-result v14

    .line 4581
    :goto_6
    :try_start_c
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "========> CONNECTIVITY_CHANGE_IMMEDIATE DISCONNECTED, errno = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4582
    invoke-static {v14}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v69

    const/16 v70, 0x0

    const/16 v71, 0xc

    const/16 v72, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v55

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4583
    const/16 v69, 0x1

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v69

    const/16 v70, 0x0

    const/16 v71, 0x8

    const/16 v72, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v55

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4584
    sget-object v69, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v70, 0x1408018

    const/16 v71, 0x18

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v55

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    goto/16 :goto_0

    .line 4577
    :catch_6
    move-exception v12

    .line 4579
    .local v12, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v12}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_6

    .line 4596
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .end local v14    # "errno":I
    .end local v39    # "netInfo":Landroid/net/NetworkInfo;
    .end local v51    # "strNetMode":Ljava/lang/String;
    .end local v52    # "strNetstate":Ljava/lang/String;
    .end local v53    # "strerrno":Ljava/lang/String;
    .end local v55    # "tmp":[B
    .end local v56    # "tmp1":[B
    :cond_3a
    const-string v69, "com.zte.autotest.Event"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_3f

    .line 4598
    const-string v69, "MAIN_CONTROL"

    const-string v70, "recieve com.zte.autotest.Event"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4599
    const-string v69, "netEvent"

    move-object/from16 v0, p2

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 4600
    .local v38, "netEvent":Ljava/lang/String;
    const-string v69, "errCode"

    move-object/from16 v0, p2

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 4601
    .local v13, "errCode":Ljava/lang/String;
    const-string v69, "resultCode"

    move-object/from16 v0, p2

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 4602
    .local v44, "resultCode":Ljava/lang/String;
    const-string v69, "market"

    const/16 v70, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v69

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v35

    .line 4603
    .local v35, "market":I
    const-string v69, "operatorCode"

    const/16 v70, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v69

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v40

    .line 4604
    .local v40, "operatorCode":I
    const-string v69, "wifi"

    move-object/from16 v0, p2

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    .line 4605
    .local v66, "wifi":Ljava/lang/String;
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "netEvent: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, " errCode: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, " resultCode: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, " market: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, " operatorCode: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, " wifi: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4607
    const/16 v69, 0x18

    move/from16 v0, v69

    new-array v0, v0, [B

    move-object/from16 v55, v0

    .line 4608
    .restart local v55    # "tmp":[B
    const/16 v69, 0x14

    move/from16 v0, v69

    new-array v0, v0, [B

    move-object/from16 v56, v0

    .line 4610
    .restart local v56    # "tmp1":[B
    :try_start_d
    const-string v69, "1"

    move-object/from16 v0, v66

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_3b

    .line 4611
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "========> com.zte.autotest.Event, wifi = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_0

    .line 4636
    :catch_7
    move-exception v12

    .line 4637
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 4613
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_3b
    :try_start_e
    const-string v69, "DISCONNECTED"

    move-object/from16 v0, v38

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_3d

    .line 4614
    const/16 v37, 0x0

    .line 4615
    .local v37, "netErrCode":I
    const-string v69, ""

    move-object/from16 v0, v69

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_3c

    .line 4616
    const-string v13, "0"
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 4619
    :cond_3c
    :try_start_f
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    move-result v37

    .line 4623
    :goto_7
    :try_start_10
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "========> com.zte.autotest.Event, netErrCode = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4624
    invoke-static/range {v37 .. v37}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v69

    const/16 v70, 0x0

    const/16 v71, 0xc

    const/16 v72, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v55

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4625
    const/16 v69, 0x1

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v69

    const/16 v70, 0x0

    const/16 v71, 0x8

    const/16 v72, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v55

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4626
    sget-object v69, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v70, 0x1408018

    const/16 v71, 0x18

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v55

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    goto/16 :goto_0

    .line 4620
    :catch_8
    move-exception v12

    .line 4621
    .local v12, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v12}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_7

    .line 4627
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .end local v37    # "netErrCode":I
    :cond_3d
    const-string v69, "CONNECTED"

    move-object/from16 v0, v38

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_3e

    .line 4628
    const-string v69, "MAIN_CONTROL"

    const-string v70, "========> com.zte.autotest.Event, netEvent = CONNECTED"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4629
    const/16 v69, 0x0

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v69

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v56

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4630
    const/16 v69, 0x1

    invoke-static/range {v69 .. v69}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v69

    const/16 v70, 0x0

    const/16 v71, 0x4

    const/16 v72, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v56

    move/from16 v3, v71

    move/from16 v4, v72

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4631
    sget-object v69, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v70, 0x1408017

    const/16 v71, 0x14

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v56

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    goto/16 :goto_0

    .line 4633
    :cond_3e
    const-string v69, "MAIN_CONTROL"

    const-string v70, "========> com.zte.autotest.Event, netEvent is undefined."

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_0

    .line 4640
    .end local v13    # "errCode":Ljava/lang/String;
    .end local v35    # "market":I
    .end local v38    # "netEvent":Ljava/lang/String;
    .end local v40    # "operatorCode":I
    .end local v44    # "resultCode":Ljava/lang/String;
    .end local v55    # "tmp":[B
    .end local v56    # "tmp1":[B
    .end local v66    # "wifi":Ljava/lang/String;
    :cond_3f
    const-string v69, "com.android.action.IPTV.AUTH_STATUS_CHANGE"

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_1

    .line 4642
    const-string v69, "MAIN_CONTROL"

    const-string v70, "receive com.android.action.IPTV.AUTH_STATUS_CHANGE"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4643
    const-string v69, "newStatus"

    move-object/from16 v0, p2

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 4644
    .local v22, "iStatus":Ljava/lang/String;
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "iStatus="

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4645
    const-string v69, "AuthSuccess"

    move-object/from16 v0, v22

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_1

    .line 4647
    const-string v69, "sys.zte.sdydapk"

    invoke-static/range {v69 .. v69}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 4648
    .local v48, "sdydapk":Ljava/lang/String;
    const-string v69, "MAIN_CONTROL"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "sdydapk="

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4649
    const-string v69, "1"

    move-object/from16 v0, v48

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_1

    .line 4651
    const-string v69, "sys.zte.sdydapk"

    const-string v70, "2"

    invoke-static/range {v69 .. v70}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4653
    const-wide/16 v69, 0x3e8

    :try_start_11
    invoke-static/range {v69 .. v70}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_9

    .line 4657
    :goto_8
    new-instance v29, Landroid/content/Intent;

    invoke-direct/range {v29 .. v29}, Landroid/content/Intent;-><init>()V

    .line 4658
    .local v29, "intent_SDYD":Landroid/content/Intent;
    const/high16 v69, 0x10000000

    move-object/from16 v0, v29

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4659
    new-instance v69, Landroid/content/ComponentName;

    const-string v70, "com.xike.xkliveplay"

    const-string v71, "com.xike.xkliveplay.activity.launch.ActivityLaunch"

    invoke-direct/range {v69 .. v71}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/stbmc/maincontrol/McService;->startActivity(Landroid/content/Intent;)V

    .line 4661
    const-string v69, "MAIN_CONTROL"

    const-string v70, "Start com.xike.xkliveplay end"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4662
    const-string v69, "sys.zte.sdydapk"

    const-string v70, "0"

    invoke-static/range {v69 .. v70}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4654
    .end local v29    # "intent_SDYD":Landroid/content/Intent;
    :catch_9
    move-exception v12

    .line 4655
    .local v12, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8
.end method
