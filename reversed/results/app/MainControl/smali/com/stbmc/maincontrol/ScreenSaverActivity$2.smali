.class Lcom/stbmc/maincontrol/ScreenSaverActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "ScreenSaverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stbmc/maincontrol/ScreenSaverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stbmc/maincontrol/ScreenSaverActivity;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/ScreenSaverActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/ScreenSaverActivity;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/stbmc/maincontrol/ScreenSaverActivity$2;->this$0:Lcom/stbmc/maincontrol/ScreenSaverActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.stbmc.maincontrol.screenclose"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/stbmc/maincontrol/ScreenSaverActivity;->access$000()Lcom/stbmc/maincontrol/ScreenSaverActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/stbmc/maincontrol/ScreenSaverActivity;->access$000()Lcom/stbmc/maincontrol/ScreenSaverActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stbmc/maincontrol/ScreenSaverActivity;->finish()V

    .line 87
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/stbmc/maincontrol/ScreenSaverActivity;->access$002(Lcom/stbmc/maincontrol/ScreenSaverActivity;)Lcom/stbmc/maincontrol/ScreenSaverActivity;

    .line 90
    :cond_0
    return-void
.end method
