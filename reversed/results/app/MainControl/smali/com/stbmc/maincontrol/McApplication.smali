.class public Lcom/stbmc/maincontrol/McApplication;
.super Landroid/app/Application;
.source "McApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MAIN_CONTROL"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 32
    const-string v1, "MAIN_CONTROL"

    const-string v2, "Start McApplication now!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.stbmc.maincontrol"

    const-string v2, "com.stbmc.maincontrol.McService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/McApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 38
    return-void
.end method
