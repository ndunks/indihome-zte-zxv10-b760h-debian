.class public Lcom/stbmc/maincontrol/CrashRestorerService$ReceiveThread;
.super Ljava/lang/Thread;
.source "CrashRestorerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stbmc/maincontrol/CrashRestorerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReceiveThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stbmc/maincontrol/CrashRestorerService;


# direct methods
.method public constructor <init>(Lcom/stbmc/maincontrol/CrashRestorerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/CrashRestorerService;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/stbmc/maincontrol/CrashRestorerService$ReceiveThread;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 252
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 259
    :goto_0
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    goto :goto_0
.end method
