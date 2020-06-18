.class Lcom/stbmc/maincontrol/McService$5$4;
.super Ljava/lang/Thread;
.source "McService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stbmc/maincontrol/McService$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/stbmc/maincontrol/McService$5;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/McService$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/stbmc/maincontrol/McService$5;

    .prologue
    .line 4089
    iput-object p1, p0, Lcom/stbmc/maincontrol/McService$5$4;->this$1:Lcom/stbmc/maincontrol/McService$5;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4091
    const-string v1, "MAIN_CONTROL"

    const-string v2, "startActivity HomeMedia"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4092
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4093
    .local v0, "intentHomeMedia":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4094
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.zte.homemedia"

    const-string v3, "com.zte.homemedia.HomeMediaActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4095
    iget-object v1, p0, Lcom/stbmc/maincontrol/McService$5$4;->this$1:Lcom/stbmc/maincontrol/McService$5;

    iget-object v1, v1, Lcom/stbmc/maincontrol/McService$5;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-virtual {v1, v0}, Lcom/stbmc/maincontrol/McService;->startActivity(Landroid/content/Intent;)V

    .line 4096
    return-void
.end method
