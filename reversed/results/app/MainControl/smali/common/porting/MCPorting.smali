.class public Lcommon/porting/MCPorting;
.super Landroid/app/Activity;
.source "MCPorting.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MCPorting"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "pContext"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const-string v0, "MCPorting"

    const-string v1, "NDK in MCPorting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iput-object p1, p0, Lcommon/porting/MCPorting;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public MCPorting_GetBestResolution()I
    .locals 2

    .prologue
    .line 71
    const-string v0, "MCPorting"

    const-string v1, "NDK MCPorting_GetBestResolution"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v0, -0x1

    return v0
.end method

.method public MCPorting_PackageInstall(Ljava/lang/String;)V
    .locals 2
    .param p1, "PackagePath"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v0, "MCPorting"

    const-string v1, "MCPorting_PackageInstall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method public MCPorting_SetAspectRatio(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 38
    const-string v0, "MCPorting"

    const-string v1, "NDK MCPorting_SetAspectRatio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method public MCPorting_SetGuiScreenSize(IIII)V
    .locals 2
    .param p1, "LeftOffset"    # I
    .param p2, "TopOffset"    # I
    .param p3, "Width"    # I
    .param p4, "Height"    # I

    .prologue
    .line 43
    const-string v0, "MCPorting"

    const-string v1, "NDK MCPorting_SetGuiScreenSize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method public MCPorting_SetResolution(I)V
    .locals 2
    .param p1, "resolution"    # I

    .prologue
    .line 52
    const-string v0, "MCPorting"

    const-string v1, "NDK MCPorting_SetResolution "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public MCPorting_SetRouteTable(Ljava/lang/String;Landroid/net/ConnectivityManager;)V
    .locals 2
    .param p1, "RouteTable"    # Ljava/lang/String;
    .param p2, "CM"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 56
    const-string v0, "MCPorting"

    const-string v1, "NDK MCPorting_SetResolution"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public MCPorting_SetVideoScreenSize(IIII)V
    .locals 2
    .param p1, "LeftOffset"    # I
    .param p2, "TopOffset"    # I
    .param p3, "Width"    # I
    .param p4, "Height"    # I

    .prologue
    .line 48
    const-string v0, "MCPorting"

    const-string v1, "NDK MCPorting_SetVideoScreenSize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method public MCPorting_Set_CGMS(I)V
    .locals 2
    .param p1, "iACPFlag"    # I

    .prologue
    .line 66
    const-string v0, "MCPorting"

    const-string v1, "NDK MCPorting_Set_CGMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public MCPorting_Set_MicroVision(I)V
    .locals 2
    .param p1, "iACPFlag"    # I

    .prologue
    .line 61
    const-string v0, "MCPorting"

    const-string v1, "NDK MCPorting_Set_MicroVision"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method public MCPorting_SyncDigitalOutput(I)V
    .locals 2
    .param p1, "iOutputMode"    # I

    .prologue
    .line 32
    const-string v0, "MCPorting"

    const-string v1, "NDK MCPorting_SyncDigitalOutput"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method
