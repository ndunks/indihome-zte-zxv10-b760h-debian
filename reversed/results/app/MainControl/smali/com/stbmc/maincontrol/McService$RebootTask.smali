.class Lcom/stbmc/maincontrol/McService$RebootTask;
.super Ljava/util/TimerTask;
.source "McService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stbmc/maincontrol/McService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RebootTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stbmc/maincontrol/McService;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/McService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/McService;

    .prologue
    .line 11205
    iput-object p1, p0, Lcom/stbmc/maincontrol/McService$RebootTask;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 11208
    const-string v0, "MAIN_CONTROL"

    const-string v1, "RebootTask , mcRebootStb input is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11209
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$RebootTask;->this$0:Lcom/stbmc/maincontrol/McService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/stbmc/maincontrol/McService;->access$6700(Lcom/stbmc/maincontrol/McService;I)V

    .line 11210
    return-void
.end method
