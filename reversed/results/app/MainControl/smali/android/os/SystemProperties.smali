.class public Landroid/os/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# static fields
.field public static final PROP_NAME_MAX:I = 0x1f

.field public static final PROP_VALUE_MAX:I = 0x5b


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Z

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # I

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # J

    .prologue
    .line 100
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static native native_add_change_callback()V
.end method

.method private static native native_get(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native native_get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native native_get_boolean(Ljava/lang/String;Z)Z
.end method

.method private static native native_get_int(Ljava/lang/String;I)I
.end method

.method private static native native_get_long(Ljava/lang/String;J)J
.end method

.method private static native native_set(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 138
    return-void
.end method
