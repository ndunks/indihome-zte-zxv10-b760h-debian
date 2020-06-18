.class Lcom/stbmc/maincontrol/McService$3;
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
    .line 3663
    iput-object p1, p0, Lcom/stbmc/maincontrol/McService$3;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/16 v6, 0x18

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 3665
    const-string v1, "MAIN_CONTROL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mcServicePostEventHandler Message ID is= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3666
    new-array v0, v6, [B

    .line 3668
    .local v0, "tmp":[B
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 3704
    const-string v1, "MAIN_CONTROL"

    const-string v2, "mcServicePostEventHandler Invalid message ID "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3708
    :goto_0
    return-void

    .line 3670
    :sswitch_0
    invoke-static {v7}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v1

    invoke-static {v1, v4, v0, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3671
    sget-object v1, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v2, 0x414001

    invoke-virtual {v1, v2, v0, v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    goto :goto_0

    .line 3675
    :sswitch_1
    const/16 v1, 0x71

    invoke-static {v1}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v1, v4, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3676
    invoke-static {v7}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v1

    invoke-static {v1, v4, v0, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3677
    sget-object v1, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v2, 0x414002

    invoke-virtual {v1, v2, v0, v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    goto :goto_0

    .line 3681
    :sswitch_2
    invoke-static {v4}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v1, v4, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3682
    invoke-static {v7}, Lcom/stbmc/maincontrol/util/ExchangeIntToByte;->intToByte(I)[B

    move-result-object v1

    invoke-static {v1, v4, v0, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3683
    sget-object v1, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v2, 0x414002

    invoke-virtual {v1, v2, v0, v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    goto :goto_0

    .line 3688
    :sswitch_3
    const-string v1, "MAIN_CONTROL"

    const-string v2, "[DingQin] mcServicePostEventHandler --> Received MSG_FORBID_STANDBY_RELEASE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3690
    const-string v1, "prop.forbidStandby"

    const-string v2, "permit"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3696
    :sswitch_4
    const-string v1, "MAIN_CONTROL"

    const-string v2, "[DingQin] mcServicePostEventHandler --> Received MSG_RESTART_AUTO_STANDBY_TIMER"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3697
    const-string v1, "MAIN_CONTROL"

    const-string v2, "[DingQin] mcServicePostEventHandler --> Call StbAutoPowerOffChange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3698
    iget-object v1, p0, Lcom/stbmc/maincontrol/McService$3;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v1}, Lcom/stbmc/maincontrol/McService;->access$3800(Lcom/stbmc/maincontrol/McService;)V

    goto :goto_0

    .line 3668
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_3
        0x3e9 -> :sswitch_4
        0x1001001 -> :sswitch_0
        0x1001002 -> :sswitch_1
        0x1001003 -> :sswitch_2
    .end sparse-switch
.end method
