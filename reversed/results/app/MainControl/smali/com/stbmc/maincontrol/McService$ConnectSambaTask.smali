.class Lcom/stbmc/maincontrol/McService$ConnectSambaTask;
.super Ljava/util/TimerTask;
.source "McService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stbmc/maincontrol/McService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectSambaTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stbmc/maincontrol/McService;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/McService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/McService;

    .prologue
    .line 5504
    iput-object p1, p0, Lcom/stbmc/maincontrol/McService$ConnectSambaTask;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 5508
    const-string v7, "Mc_Samba"

    const-string v8, "samba_ip"

    invoke-static {v7, v8}, Lcom/stbmc/maincontrol/McService;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5509
    .local v4, "samba_ip":Ljava/lang/String;
    const-string v7, "Mc_Samba"

    const-string v8, "user_name"

    invoke-static {v7, v8}, Lcom/stbmc/maincontrol/McService;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5510
    .local v5, "user_name":Ljava/lang/String;
    const-string v7, "Mc_Samba"

    const-string v8, "user_passwd"

    invoke-static {v7, v8}, Lcom/stbmc/maincontrol/McService;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5512
    .local v6, "user_passwd":Ljava/lang/String;
    const-string v7, "MAIN_CONTROL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "------------->McService connectSambaTask samba_ip = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", user_name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", user_passwd = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5518
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/stbmc/maincontrol/McService$ConnectSambaTask;->this$0:Lcom/stbmc/maincontrol/McService;

    iget v7, v7, Lcom/stbmc/maincontrol/McService;->rtySambaCount:I

    const/4 v8, 0x3

    if-ge v7, v8, :cond_0

    iget-object v7, p0, Lcom/stbmc/maincontrol/McService$ConnectSambaTask;->this$0:Lcom/stbmc/maincontrol/McService;

    iget-boolean v7, v7, Lcom/stbmc/maincontrol/McService;->bUserCtrlSamba:Z

    if-nez v7, :cond_0

    sget-boolean v7, Lcom/stbmc/maincontrol/McService;->bConnectSambaSucc:Z

    if-nez v7, :cond_0

    .line 5523
    const/16 v1, 0x400

    .line 5524
    .local v1, "aDataLen":I
    new-array v0, v1, [B

    .line 5525
    .local v0, "aData":[B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 5526
    .local v2, "aDataTmp":[B
    array-length v3, v2

    .line 5527
    .local v3, "lenTmp":I
    invoke-static {v2, v10, v0, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5529
    const-string v7, "MAIN_CONTROL"

    const-string v8, "------------->McService connectSambaTask send msg: EVENT_STBMC_JAVATOC_MOUNTSAMBA"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5530
    sget-object v7, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v8, 0x1408015

    invoke-virtual {v7, v8, v0, v1}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    .line 5532
    iget-object v7, p0, Lcom/stbmc/maincontrol/McService$ConnectSambaTask;->this$0:Lcom/stbmc/maincontrol/McService;

    iget v8, v7, Lcom/stbmc/maincontrol/McService;->rtySambaCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/stbmc/maincontrol/McService;->rtySambaCount:I

    .line 5541
    .end local v0    # "aData":[B
    .end local v1    # "aDataLen":I
    .end local v2    # "aDataTmp":[B
    .end local v3    # "lenTmp":I
    :goto_0
    return-void

    .line 5536
    :cond_0
    const-string v7, "MAIN_CONTROL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "------------->McService connectSambaTask cancel. samba_ip.length() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", rtySambaCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/stbmc/maincontrol/McService$ConnectSambaTask;->this$0:Lcom/stbmc/maincontrol/McService;

    iget v9, v9, Lcom/stbmc/maincontrol/McService;->rtySambaCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bUserCtrlSamba = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/stbmc/maincontrol/McService$ConnectSambaTask;->this$0:Lcom/stbmc/maincontrol/McService;

    iget-boolean v9, v9, Lcom/stbmc/maincontrol/McService;->bUserCtrlSamba:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bConnectSambaSucc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/stbmc/maincontrol/McService;->bConnectSambaSucc:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5539
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/McService$ConnectSambaTask;->cancel()Z

    goto :goto_0
.end method
