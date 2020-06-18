.class Lcom/stbmc/maincontrol/CrashRestorerService$1;
.super Ljava/lang/Object;
.source "CrashRestorerService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stbmc/maincontrol/CrashRestorerService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stbmc/maincontrol/CrashRestorerService;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/CrashRestorerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/CrashRestorerService;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/stbmc/maincontrol/CrashRestorerService$1;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService$1;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    iget-object v0, v0, Lcom/stbmc/maincontrol/CrashRestorerService;->TAG:Ljava/lang/String;

    const-string v1, "click ok"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method
