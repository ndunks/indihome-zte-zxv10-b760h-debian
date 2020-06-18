.class Lcom/stbmc/maincontrol/McService$AutoPowerOffTask;
.super Ljava/util/TimerTask;
.source "McService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stbmc/maincontrol/McService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AutoPowerOffTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stbmc/maincontrol/McService;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/McService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/McService;

    .prologue
    .line 6271
    iput-object p1, p0, Lcom/stbmc/maincontrol/McService$AutoPowerOffTask;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 6275
    const-string v3, "MAIN_CONTROL"

    const-string v4, "time to auto power off now"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6279
    const/4 v1, 0x4

    .line 6280
    .local v1, "aDataLen":I
    :try_start_0
    new-array v0, v1, [B

    .line 6281
    .local v0, "aData":[B
    sget-object v3, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v4, 0x140800e

    invoke-virtual {v3, v4, v0, v1}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6285
    .end local v0    # "aData":[B
    :goto_0
    return-void

    .line 6282
    :catch_0
    move-exception v2

    .line 6283
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
