.class public Lcom/ztestb/basecomp/BaseComponentServiceJni;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "BaseComp.Java"

    sput-object v0, Lcom/ztestb/basecomp/BaseComponentServiceJni;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ztestb/basecomp/BaseComponentServiceJni;->b:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/ztestb/basecomp/BaseComponentServiceJni;->c:Ljava/lang/String;

    sget-object v0, Lcom/ztestb/basecomp/BaseComponentServiceJni;->a:Ljava/lang/String;

    const-string v1, "BaseComponentService: Load native library libztebasecomp_jni.so"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ztebasecomp_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LogModuleregisterBroadCast()V
    .locals 1

    sget-object v0, Lcom/ztestb/basecomp/BaseComponentService;->b:Landroid/content/Context;

    check-cast v0, Lcom/ztestb/basecomp/BaseComponentService;

    invoke-virtual {v0}, Lcom/ztestb/basecomp/BaseComponentService;->c()V

    return-void
.end method

.method public static native clear_Ulog()V
.end method

.method public static native external_storage_pull_in(Ljava/lang/String;)I
.end method

.method public static native external_storage_pull_out(Ljava/lang/String;)I
.end method

.method public static getUSBBroadCastEnable()Z
    .locals 1

    sget-boolean v0, Lcom/ztestb/basecomp/BaseComponentServiceJni;->b:Z

    return v0
.end method

.method public static sendReadyBroadcast()V
    .locals 1

    sget-object v0, Lcom/ztestb/basecomp/BaseComponentService;->b:Landroid/content/Context;

    check-cast v0, Lcom/ztestb/basecomp/BaseComponentService;

    invoke-virtual {v0}, Lcom/ztestb/basecomp/BaseComponentService;->b()V

    return-void
.end method

.method public static setUSBBroadCastEnable()V
    .locals 2

    sget-object v0, Lcom/ztestb/basecomp/BaseComponentServiceJni;->a:Ljava/lang/String;

    const-string v1, "setUSBBroadCastEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ztestb/basecomp/BaseComponentServiceJni;->b:Z

    sget-object v0, Lcom/ztestb/basecomp/BaseComponentServiceJni;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ztestb/basecomp/BaseComponentServiceJni;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/ztestb/basecomp/BaseComponentServiceJni;->a:Ljava/lang/String;

    const-string v1, "early usb path deal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ztestb/basecomp/BaseComponentServiceJni;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/ztestb/basecomp/BaseComponentServiceJni;->external_storage_pull_in(Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static set_early_usb_path(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/ztestb/basecomp/BaseComponentServiceJni;->c:Ljava/lang/String;

    return-void
.end method

.method public static showToast(I)V
    .locals 2

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput p0, v1, Landroid/os/Message;->what:I

    sget-object v0, Lcom/ztestb/basecomp/BaseComponentService;->b:Landroid/content/Context;

    check-cast v0, Lcom/ztestb/basecomp/BaseComponentService;

    iget-object v0, v0, Lcom/ztestb/basecomp/BaseComponentService;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static native start_Ulog(IIII)V
.end method

.method public static native stop_Ulog()V
.end method


# virtual methods
.method public native BaseCompLogcatPath([BI)I
.end method

.method public native BaseCompStart()I
.end method

.method public native setJNIEnv()I
.end method
