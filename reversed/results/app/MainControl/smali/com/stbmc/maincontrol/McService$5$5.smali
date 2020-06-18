.class Lcom/stbmc/maincontrol/McService$5$5;
.super Ljava/lang/Object;
.source "McService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 4384
    iput-object p1, p0, Lcom/stbmc/maincontrol/McService$5$5;->this$1:Lcom/stbmc/maincontrol/McService$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4387
    const/4 v0, 0x2

    const/16 v1, 0x76

    invoke-static {v0, v1, v2, v2}, Lcom/stbmc/maincontrol/McService;->showDialog(IILjava/lang/String;Ljava/lang/String;)V

    .line 4388
    return-void
.end method
