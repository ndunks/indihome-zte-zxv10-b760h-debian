.class public Lcom/stbmc/maincontrol/util/ExchangeIntToByte;
.super Ljava/lang/Object;
.source "ExchangeIntToByte.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToInt([B)I
    .locals 4
    .param p0, "bArray"    # [B

    .prologue
    .line 15
    const/4 v0, 0x0

    .line 16
    .local v0, "a":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 17
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 16
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_0
    return v0
.end method

.method public static byteToLong([B)J
    .locals 5
    .param p0, "bArray"    # [B

    .prologue
    .line 33
    const-wide/16 v0, 0x0

    .line 35
    .local v0, "a":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 36
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x8

    shl-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 35
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    :cond_0
    return-wide v0
.end method

.method public static intToByte(I)[B
    .locals 4
    .param p0, "a"    # I

    .prologue
    .line 6
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 7
    .local v0, "bArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 8
    new-instance v2, Ljava/lang/Integer;

    and-int/lit16 v3, p0, 0xff

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 9
    shr-int/lit8 p0, p0, 0x8

    .line 7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_0
    return-object v0
.end method

.method public static longToByte(J)[B
    .locals 6
    .param p0, "a"    # J

    .prologue
    const/16 v5, 0x8

    .line 23
    new-array v0, v5, [B

    .line 25
    .local v0, "bArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 26
    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0xff

    and-long/2addr v3, p0

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2}, Ljava/lang/Long;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 27
    shr-long/2addr p0, v5

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :cond_0
    return-object v0
.end method
