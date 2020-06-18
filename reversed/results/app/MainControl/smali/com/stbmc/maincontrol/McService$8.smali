.class Lcom/stbmc/maincontrol/McService$8;
.super Ljava/lang/Object;
.source "McService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stbmc/maincontrol/McService;->onCreate()V
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
    .line 5753
    iput-object p1, p0, Lcom/stbmc/maincontrol/McService$8;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5755
    sget-object v1, Lcom/stbmc/maincontrol/McService;->stbmcJniInterface:Lcom/stbmc/maincontrol/StbmcJniInterface;

    invoke-virtual {v1}, Lcom/stbmc/maincontrol/StbmcJniInterface;->ZteStbmcInit()I

    move-result v0

    .line 5756
    .local v0, "iRet":I
    if-eqz v0, :cond_0

    .line 5758
    const-string v1, "MAIN_CONTROL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZteStbmcInit failed, iRet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5760
    :cond_0
    return-void
.end method
