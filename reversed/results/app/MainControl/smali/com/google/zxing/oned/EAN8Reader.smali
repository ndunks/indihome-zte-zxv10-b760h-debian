.class public final Lcom/google/zxing/oned/EAN8Reader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "EAN8Reader.java"


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I

    .line 34
    return-void
.end method


# virtual methods
.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 12
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "startRange"    # [I
    .param p3, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v3, p0, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I

    .line 41
    .local v3, "counters":[I
    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v3, v10

    .line 42
    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v3, v10

    .line 43
    const/4 v10, 0x2

    const/4 v11, 0x0

    aput v11, v3, v10

    .line 44
    const/4 v10, 0x3

    const/4 v11, 0x0

    aput v11, v3, v10

    .line 45
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    .line 46
    .local v4, "end":I
    const/4 v10, 0x1

    aget v8, p2, v10

    .line 48
    .local v8, "rowOffset":I
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_0
    const/4 v10, 0x4

    if-ge v9, v10, :cond_1

    if-ge v8, v4, :cond_1

    .line 49
    sget-object v10, Lcom/google/zxing/oned/EAN8Reader;->L_PATTERNS:[[I

    invoke-static {p1, v3, v8, v10}, Lcom/google/zxing/oned/EAN8Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v1

    .line 50
    .local v1, "bestMatch":I
    add-int/lit8 v10, v1, 0x30

    int-to-char v10, v10

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    move-object v0, v3

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_0

    aget v2, v0, v5

    .line 52
    .local v2, "counter":I
    add-int/2addr v8, v2

    .line 51
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 48
    .end local v2    # "counter":I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "arr$":[I
    .end local v1    # "bestMatch":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_1
    const/4 v10, 0x1

    sget-object v11, Lcom/google/zxing/oned/EAN8Reader;->MIDDLE_PATTERN:[I

    invoke-static {p1, v8, v10, v11}, Lcom/google/zxing/oned/EAN8Reader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v7

    .line 57
    .local v7, "middleRange":[I
    const/4 v10, 0x1

    aget v8, v7, v10

    .line 59
    const/4 v9, 0x0

    :goto_2
    const/4 v10, 0x4

    if-ge v9, v10, :cond_3

    if-ge v8, v4, :cond_3

    .line 60
    sget-object v10, Lcom/google/zxing/oned/EAN8Reader;->L_PATTERNS:[[I

    invoke-static {p1, v3, v8, v10}, Lcom/google/zxing/oned/EAN8Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v1

    .line 61
    .restart local v1    # "bestMatch":I
    add-int/lit8 v10, v1, 0x30

    int-to-char v10, v10

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    move-object v0, v3

    .restart local v0    # "arr$":[I
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_3
    if-ge v5, v6, :cond_2

    aget v2, v0, v5

    .line 63
    .restart local v2    # "counter":I
    add-int/2addr v8, v2

    .line 62
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 59
    .end local v2    # "counter":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 67
    .end local v0    # "arr$":[I
    .end local v1    # "bestMatch":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_3
    return v8
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
