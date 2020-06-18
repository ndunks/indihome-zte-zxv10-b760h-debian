.class public Lcom/stbmc/maincontrol/CrashRestorerJniInterface;
.super Ljava/lang/Object;
.source "CrashRestorerJniInterface.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "CrashRestore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native CrashRestorerInit()I
.end method
