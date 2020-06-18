.class Lcom/stbmc/maincontrol/ScreenSaverActivity$1;
.super Ljava/lang/Object;
.source "ScreenSaverActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stbmc/maincontrol/ScreenSaverActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 50
    iput-object p1, p0, Lcom/stbmc/maincontrol/ScreenSaverActivity$1;->this$0:Lcom/stbmc/maincontrol/ScreenSaverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/stbmc/maincontrol/ScreenSaverActivity$1;->this$0:Lcom/stbmc/maincontrol/ScreenSaverActivity;

    invoke-virtual {v0}, Lcom/stbmc/maincontrol/ScreenSaverActivity;->finish()V

    .line 53
    return-void
.end method
