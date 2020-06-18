.class Lcom/stbmc/maincontrol/McService$6;
.super Ljava/util/TimerTask;
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
    .line 5130
    iput-object p1, p0, Lcom/stbmc/maincontrol/McService$6;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5136
    const-string v1, "timer"

    const-string v2, "run timer to syc volum"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5137
    iget-object v1, p0, Lcom/stbmc/maincontrol/McService$6;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v1}, Lcom/stbmc/maincontrol/McService;->access$5800(Lcom/stbmc/maincontrol/McService;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    div-int/lit8 v0, v1, 0xf

    .line 5138
    .local v0, "syncvolum":I
    iget-object v1, p0, Lcom/stbmc/maincontrol/McService$6;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v1}, Lcom/stbmc/maincontrol/McService;->access$5900(Lcom/stbmc/maincontrol/McService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5139
    iget-object v1, p0, Lcom/stbmc/maincontrol/McService$6;->this$0:Lcom/stbmc/maincontrol/McService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/stbmc/maincontrol/McService;->access$5902(Lcom/stbmc/maincontrol/McService;Z)Z

    .line 5140
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$3600()Lcommon/android/mscpcfg/McspCfgmanager;

    move-result-object v1

    const-string v2, "Common"

    const-string v3, "Volume"

    invoke-virtual {v1, v2, v3, v0}, Lcommon/android/mscpcfg/McspCfgmanager;->putInteger(Ljava/lang/String;Ljava/lang/String;I)I

    .line 5143
    :cond_0
    return-void
.end method
