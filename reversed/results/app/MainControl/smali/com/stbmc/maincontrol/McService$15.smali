.class Lcom/stbmc/maincontrol/McService$15;
.super Ljava/lang/Thread;
.source "McService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stbmc/maincontrol/McService;->checkConfigIsNull()V
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
    .line 10574
    iput-object p1, p0, Lcom/stbmc/maincontrol/McService$15;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 10579
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10585
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v2

    iget-object v2, v2, Lcom/stbmc/maincontrol/McService;->mPromptServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 10586
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x16

    iput v2, v1, Landroid/os/Message;->what:I

    .line 10587
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v2

    iget-object v2, v2, Lcom/stbmc/maincontrol/McService;->mPromptServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 10588
    const-string v2, "MAIN_CONTROL"

    const-string v3, "checkConfigIsNull Send MSG_PROMPT_NO_CONFIG end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10589
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 10580
    :catch_0
    move-exception v0

    .line 10582
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
