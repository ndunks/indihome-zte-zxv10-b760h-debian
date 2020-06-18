.class Lcom/stbmc/maincontrol/McService$14;
.super Ljava/lang/Object;
.source "McService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stbmc/maincontrol/McService;->showChangeTo720P()V
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
    .line 10481
    iput-object p1, p0, Lcom/stbmc/maincontrol/McService$14;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 10483
    const-string v0, "MAIN_CONTROL"

    const-string v1, "ChangeTo720Key Dialog is cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10484
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$14;->this$0:Lcom/stbmc/maincontrol/McService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/stbmc/maincontrol/McService;->access$6202(Lcom/stbmc/maincontrol/McService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 10485
    return-void
.end method
