.class public final Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;
.super Ljava/lang/Object;
.source "PDF417ScanningDecoder.java"


# static fields
.field private static final CODEWORD_SKEW_SIZE:I = 0x2

.field private static final MAX_EC_CODEWORDS:I = 0x200

.field private static final MAX_ERRORS:I = 0x3

.field private static final errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;-><init>()V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private static adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .locals 12
    .param p0, "rowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 143
    if-nez p0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-object v10

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getRowHeights()[I

    move-result-object v9

    .line 147
    .local v9, "rowHeights":[I
    if-eqz v9, :cond_0

    .line 150
    invoke-static {v9}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getMax([I)I

    move-result v4

    .line 151
    .local v4, "maxRowHeight":I
    const/4 v6, 0x0

    .line 152
    .local v6, "missingStartRows":I
    move-object v0, v9

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget v8, v0, v2

    .line 153
    .local v8, "rowHeight":I
    sub-int v10, v4, v8

    add-int/2addr v6, v10

    .line 154
    if-lez v8, :cond_3

    .line 158
    .end local v8    # "rowHeight":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 159
    .local v1, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v7, 0x0

    .local v7, "row":I
    :goto_2
    if-lez v6, :cond_4

    aget-object v10, v1, v7

    if-nez v10, :cond_4

    .line 160
    add-int/lit8 v6, v6, -0x1

    .line 159
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 152
    .end local v1    # "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v7    # "row":I
    .restart local v8    # "rowHeight":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 162
    .end local v8    # "rowHeight":I
    .restart local v1    # "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v7    # "row":I
    :cond_4
    const/4 v5, 0x0

    .line 163
    .local v5, "missingEndRows":I
    array-length v10, v9

    add-int/lit8 v7, v10, -0x1

    :goto_3
    if-ltz v7, :cond_5

    .line 164
    aget v10, v9, v7

    sub-int v10, v4, v10

    add-int/2addr v5, v10

    .line 165
    aget v10, v9, v7

    if-lez v10, :cond_6

    .line 169
    :cond_5
    array-length v10, v1

    add-int/lit8 v7, v10, -0x1

    :goto_4
    if-lez v5, :cond_7

    aget-object v10, v1, v7

    if-nez v10, :cond_7

    .line 170
    add-int/lit8 v5, v5, -0x1

    .line 169
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 163
    :cond_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 172
    :cond_7
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v10

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft()Z

    move-result v11

    invoke-virtual {v10, v6, v5, v11}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->addMissingRows(IIZ)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v10

    goto :goto_0
.end method

.method private static adjustCodewordCount(Lcom/google/zxing/pdf417/decoder/DetectionResult;[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)V
    .locals 6
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .param p1, "barcodeMatrix"    # [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 235
    aget-object v2, p1, v4

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v1

    .line 236
    .local v1, "numberOfCodewords":[I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeECLevel()I

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getNumberOfECCodeWords(I)I

    move-result v3

    sub-int v0, v2, v3

    .line 239
    .local v0, "calculatedNumberOfCodewords":I
    array-length v2, v1

    if-nez v2, :cond_3

    .line 240
    if-lt v0, v5, :cond_0

    const/16 v2, 0x3a0

    if-le v0, v2, :cond_1

    .line 241
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 243
    :cond_1
    aget-object v2, p1, v4

    aget-object v2, v2, v5

    invoke-virtual {v2, v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .line 248
    :cond_2
    :goto_0
    return-void

    .line 244
    :cond_3
    aget v2, v1, v4

    if-eq v2, v0, :cond_2

    .line 246
    aget-object v2, p1, v4

    aget-object v2, v2, v5

    invoke-virtual {v2, v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_0
.end method

.method private static adjustCodewordStartColumn(Lcom/google/zxing/common/BitMatrix;IIZII)I
    .locals 6
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "minColumn"    # I
    .param p2, "maxColumn"    # I
    .param p3, "leftToRight"    # Z
    .param p4, "codewordStartColumn"    # I
    .param p5, "imageRow"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 497
    move v0, p4

    .line 498
    .local v0, "correctedStartColumn":I
    if-eqz p3, :cond_2

    const/4 v2, -0x1

    .line 500
    .local v2, "increment":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_6

    .line 501
    :goto_2
    if-eqz p3, :cond_0

    if-ge v0, p1, :cond_1

    :cond_0
    if-nez p3, :cond_4

    if-ge v0, p2, :cond_4

    :cond_1
    invoke-virtual {p0, v0, p5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-ne p3, v4, :cond_4

    .line 503
    sub-int v4, p4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v5, :cond_3

    .line 511
    .end local p4    # "codewordStartColumn":I
    :goto_3
    return p4

    .end local v1    # "i":I
    .end local v2    # "increment":I
    .restart local p4    # "codewordStartColumn":I
    :cond_2
    move v2, v3

    .line 498
    goto :goto_0

    .line 506
    .restart local v1    # "i":I
    .restart local v2    # "increment":I
    :cond_3
    add-int/2addr v0, v2

    goto :goto_2

    .line 508
    :cond_4
    neg-int v2, v2

    .line 509
    if-nez p3, :cond_5

    move p3, v3

    .line 500
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 509
    :cond_5
    const/4 p3, 0x0

    goto :goto_4

    :cond_6
    move p4, v0

    .line 511
    goto :goto_3
.end method

.method private static checkCodewordSkew(III)Z
    .locals 1
    .param p0, "codewordSize"    # I
    .param p1, "minCodewordWidth"    # I
    .param p2, "maxCodewordWidth"    # I

    .prologue
    .line 515
    add-int/lit8 v0, p1, -0x2

    if-gt v0, p0, :cond_0

    add-int/lit8 v0, p2, 0x2

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static correctErrors([I[II)I
    .locals 2
    .param p0, "codewords"    # [I
    .param p1, "erasures"    # [I
    .param p2, "numECCodewords"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 546
    if-eqz p1, :cond_0

    array-length v0, p1

    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_1

    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x200

    if-le p2, v0, :cond_2

    .line 551
    :cond_1
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 553
    :cond_2
    sget-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-virtual {v0, p0, p2, p1}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->decode([II[I)I

    move-result v0

    return v0
.end method

.method private static createBarcodeMatrix(Lcom/google/zxing/pdf417/decoder/DetectionResult;)[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    .locals 14
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v12

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v13

    add-int/lit8 v13, v13, 0x2

    filled-new-array {v12, v13}, [I

    move-result-object v12

    const-class v13, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    .line 332
    .local v2, "barcodeMatrix":[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    const/4 v10, 0x0

    .local v10, "row":I
    :goto_0
    array-length v12, v2

    if-ge v10, v12, :cond_1

    .line 333
    const/4 v4, 0x0

    .local v4, "column":I
    :goto_1
    aget-object v12, v2, v10

    array-length v12, v12

    if-ge v4, v12, :cond_0

    .line 334
    aget-object v12, v2, v10

    new-instance v13, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v13}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    aput-object v13, v12, v4

    .line 333
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 332
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 338
    .end local v4    # "column":I
    :cond_1
    const/4 v4, 0x0

    .line 339
    .restart local v4    # "column":I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumns()[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v0

    .local v0, "arr$":[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v7, v6

    .end local v0    # "arr$":[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .local v7, "i$":I
    :goto_2
    if-ge v7, v8, :cond_5

    aget-object v5, v0, v7

    .line 340
    .local v5, "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    if-eqz v5, :cond_4

    .line 341
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .local v1, "arr$":[Lcom/google/zxing/pdf417/decoder/Codeword;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_3
    if-ge v6, v9, :cond_4

    aget-object v3, v1, v6

    .line 342
    .local v3, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v3, :cond_3

    .line 343
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v11

    .line 344
    .local v11, "rowNumber":I
    if-ltz v11, :cond_3

    .line 345
    array-length v12, v2

    if-lt v11, v12, :cond_2

    .line 346
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v12

    throw v12

    .line 348
    :cond_2
    aget-object v12, v2, v11

    aget-object v12, v12, v4

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .line 341
    .end local v11    # "rowNumber":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 353
    .end local v1    # "arr$":[Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v3    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 339
    add-int/lit8 v6, v7, 0x1

    .restart local v6    # "i$":I
    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_2

    .line 355
    .end local v5    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    :cond_5
    return-object v2
.end method

.method private static createDecoderResult(Lcom/google/zxing/pdf417/decoder/DetectionResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 14
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createBarcodeMatrix(Lcom/google/zxing/pdf417/decoder/DetectionResult;)[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    move-result-object v3

    .line 253
    .local v3, "barcodeMatrix":[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    invoke-static {p0, v3}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustCodewordCount(Lcom/google/zxing/pdf417/decoder/DetectionResult;[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)V

    .line 254
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v7, "erasures":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v11

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v12

    mul-int/2addr v11, v12

    new-array v5, v11, [I

    .line 256
    .local v5, "codewords":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v1, "ambiguousIndexValuesList":Ljava/util/List;, "Ljava/util/List<[I>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v2, "ambiguousIndexesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .local v9, "row":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v11

    if-ge v9, v11, :cond_3

    .line 259
    const/4 v6, 0x0

    .local v6, "column":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v11

    if-ge v6, v11, :cond_2

    .line 260
    aget-object v11, v3, v9

    add-int/lit8 v12, v6, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v10

    .line 261
    .local v10, "values":[I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v11

    mul-int/2addr v11, v9

    add-int v4, v11, v6

    .line 262
    .local v4, "codewordIndex":I
    array-length v11, v10

    if-nez v11, :cond_0

    .line 263
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 259
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 264
    :cond_0
    array-length v11, v10

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 265
    const/4 v11, 0x0

    aget v11, v10, v11

    aput v11, v5, v4

    goto :goto_2

    .line 267
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 258
    .end local v4    # "codewordIndex":I
    .end local v10    # "values":[I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 272
    .end local v6    # "column":I
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    new-array v0, v11, [[I

    .line 273
    .local v0, "ambiguousIndexValues":[[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    array-length v11, v0

    if-ge v8, v11, :cond_4

    .line 274
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    aput-object v11, v0, v8

    .line 273
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 276
    :cond_4
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeECLevel()I

    move-result v11

    invoke-static {v7}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v12

    invoke-static {v2}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v13

    invoke-static {v11, v5, v12, v13, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createDecoderResultFromAmbiguousValues(I[I[I[I[[I)Lcom/google/zxing/common/DecoderResult;

    move-result-object v11

    return-object v11
.end method

.method private static createDecoderResultFromAmbiguousValues(I[I[I[I[[I)Lcom/google/zxing/common/DecoderResult;
    .locals 7
    .param p0, "ecLevel"    # I
    .param p1, "codewords"    # [I
    .param p2, "erasureArray"    # [I
    .param p3, "ambiguousIndexes"    # [I
    .param p4, "ambiguousIndexValues"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 299
    array-length v4, p3

    new-array v0, v4, [I

    .line 301
    .local v0, "ambiguousIndexCount":[I
    const/16 v2, 0x64

    .local v2, "tries":I
    move v3, v2

    .line 302
    .end local v2    # "tries":I
    .local v3, "tries":I
    :goto_0
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "tries":I
    .restart local v2    # "tries":I
    if-lez v3, :cond_5

    .line 303
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 304
    aget v4, p3, v1

    aget-object v5, p4, v1

    aget v6, v0, v1

    aget v5, v5, v6

    aput v5, p1, v4

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 307
    :cond_0
    :try_start_0
    invoke-static {p1, p0, p2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->decodeCodewords([II[I)Lcom/google/zxing/common/DecoderResult;
    :try_end_0
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 308
    :catch_0
    move-exception v4

    .line 311
    array-length v4, v0

    if-nez v4, :cond_1

    .line 312
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4

    .line 314
    :cond_1
    const/4 v1, 0x0

    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 315
    aget v4, v0, v1

    aget-object v5, p4, v1

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_3

    .line 316
    aget v4, v0, v1

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v1

    :cond_2
    move v3, v2

    .line 314
    .end local v2    # "tries":I
    .restart local v3    # "tries":I
    goto :goto_0

    .line 319
    .end local v3    # "tries":I
    .restart local v2    # "tries":I
    :cond_3
    const/4 v4, 0x0

    aput v4, v0, v1

    .line 320
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_4

    .line 321
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4

    .line 314
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 326
    .end local v1    # "i":I
    :cond_5
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4
.end method

.method public static decode(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/DecoderResult;
    .locals 21
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "imageTopLeft"    # Lcom/google/zxing/ResultPoint;
    .param p2, "imageBottomLeft"    # Lcom/google/zxing/ResultPoint;
    .param p3, "imageTopRight"    # Lcom/google/zxing/ResultPoint;
    .param p4, "imageBottomRight"    # Lcom/google/zxing/ResultPoint;
    .param p5, "minCodewordWidth"    # I
    .param p6, "maxCodewordWidth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v2, Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/zxing/pdf417/decoder/BoundingBox;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    .line 59
    .local v2, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    const/16 v17, 0x0

    .line 60
    .local v17, "leftRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    const/16 v20, 0x0

    .line 61
    .local v20, "rightRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    const/4 v14, 0x0

    .line 62
    .local v14, "detectionResult":Lcom/google/zxing/pdf417/decoder/DetectionResult;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    const/4 v3, 0x2

    move/from16 v0, v16

    if-ge v0, v3, :cond_5

    .line 63
    if-eqz p1, :cond_0

    .line 64
    const/4 v6, 0x1

    move-object/from16 v3, p0

    move-object v4, v2

    move-object/from16 v5, p1

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v3 .. v8}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v17

    .line 67
    :cond_0
    if-eqz p3, :cond_1

    .line 68
    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v3 .. v8}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v20

    .line 71
    :cond_1
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->merge(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/DetectionResult;

    move-result-object v14

    .line 72
    if-nez v14, :cond_2

    .line 73
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3

    .line 75
    :cond_2
    if-nez v16, :cond_4

    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v4

    if-lt v3, v4, :cond_3

    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 78
    :cond_3
    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v2

    .line 62
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 80
    :cond_4
    invoke-virtual {v14, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setBoundingBox(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    .line 84
    :cond_5
    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v3

    add-int/lit8 v18, v3, 0x1

    .line 85
    .local v18, "maxBarcodeColumn":I
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v14, v3, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 86
    move/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 88
    if-eqz v17, :cond_7

    const/4 v6, 0x1

    .line 89
    .local v6, "leftToRight":Z
    :goto_1
    const/4 v12, 0x1

    .local v12, "barcodeColumnCount":I
    :goto_2
    move/from16 v0, v18

    if-gt v12, v0, :cond_11

    .line 90
    if-eqz v6, :cond_8

    move v11, v12

    .line 91
    .local v11, "barcodeColumn":I
    :goto_3
    invoke-virtual {v14, v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 89
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 88
    .end local v6    # "leftToRight":Z
    .end local v11    # "barcodeColumn":I
    .end local v12    # "barcodeColumnCount":I
    :cond_7
    const/4 v6, 0x0

    goto :goto_1

    .line 90
    .restart local v6    # "leftToRight":Z
    .restart local v12    # "barcodeColumnCount":I
    :cond_8
    sub-int v11, v18, v12

    goto :goto_3

    .line 96
    .restart local v11    # "barcodeColumn":I
    :cond_9
    if-eqz v11, :cond_a

    move/from16 v0, v18

    if-ne v11, v0, :cond_e

    .line 97
    :cond_a
    new-instance v15, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    if-nez v11, :cond_d

    const/4 v3, 0x1

    :goto_4
    invoke-direct {v15, v2, v3}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    .line 101
    .local v15, "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    :goto_5
    invoke-virtual {v14, v11, v15}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 102
    const/4 v7, -0x1

    .line 103
    .local v7, "startColumn":I
    move/from16 v19, v7

    .line 105
    .local v19, "previousStartColumn":I
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v8

    .local v8, "imageRow":I
    :goto_6
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v3

    if-gt v8, v3, :cond_6

    .line 106
    invoke-static {v14, v11, v8, v6}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getStartColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;IIZ)I

    move-result v7

    .line 107
    if-ltz v7, :cond_b

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v3

    if-le v7, v3, :cond_10

    .line 108
    :cond_b
    const/4 v3, -0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_f

    .line 105
    :cond_c
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 97
    .end local v7    # "startColumn":I
    .end local v8    # "imageRow":I
    .end local v15    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .end local v19    # "previousStartColumn":I
    :cond_d
    const/4 v3, 0x0

    goto :goto_4

    .line 99
    :cond_e
    new-instance v15, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    invoke-direct {v15, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    .restart local v15    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    goto :goto_5

    .line 111
    .restart local v7    # "startColumn":I
    .restart local v8    # "imageRow":I
    .restart local v19    # "previousStartColumn":I
    :cond_f
    move/from16 v7, v19

    .line 113
    :cond_10
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinX()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v5

    move-object/from16 v3, p0

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v3 .. v10}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v13

    .line 115
    .local v13, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v13, :cond_c

    .line 116
    invoke-virtual {v15, v8, v13}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V

    .line 117
    move/from16 v19, v7

    .line 118
    invoke-virtual {v13}, Lcom/google/zxing/pdf417/decoder/Codeword;->getWidth()I

    move-result v3

    move/from16 v0, p5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 119
    invoke-virtual {v13}, Lcom/google/zxing/pdf417/decoder/Codeword;->getWidth()I

    move-result v3

    move/from16 v0, p6

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result p6

    goto :goto_7

    .line 123
    .end local v7    # "startColumn":I
    .end local v8    # "imageRow":I
    .end local v11    # "barcodeColumn":I
    .end local v13    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v15    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .end local v19    # "previousStartColumn":I
    :cond_11
    invoke-static {v14}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createDecoderResult(Lcom/google/zxing/pdf417/decoder/DetectionResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v3

    return-object v3
.end method

.method private static decodeCodewords([II[I)Lcom/google/zxing/common/DecoderResult;
    .locals 5
    .param p0, "codewords"    # [I
    .param p1, "ecLevel"    # I
    .param p2, "erasures"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 521
    array-length v3, p0

    if-nez v3, :cond_0

    .line 522
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 525
    :cond_0
    const/4 v3, 0x1

    add-int/lit8 v4, p1, 0x1

    shl-int v2, v3, v4

    .line 526
    .local v2, "numECCodewords":I
    invoke-static {p0, p2, v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->correctErrors([I[II)I

    move-result v0

    .line 527
    .local v0, "correctedErrorsCount":I
    invoke-static {p0, v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->verifyCodewordCount([II)V

    .line 530
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1

    .line 531
    .local v1, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/zxing/common/DecoderResult;->setErrorsCorrected(Ljava/lang/Integer;)V

    .line 532
    array-length v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/zxing/common/DecoderResult;->setErasures(Ljava/lang/Integer;)V

    .line 533
    return-object v1
.end method

.method private static detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;
    .locals 11
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "minColumn"    # I
    .param p2, "maxColumn"    # I
    .param p3, "leftToRight"    # Z
    .param p4, "startColumn"    # I
    .param p5, "imageRow"    # I
    .param p6, "minCodewordWidth"    # I
    .param p7, "maxCodewordWidth"    # I

    .prologue
    .line 409
    invoke-static/range {p0 .. p5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustCodewordStartColumn(Lcom/google/zxing/common/BitMatrix;IIZII)I

    move-result p4

    .line 414
    invoke-static/range {p0 .. p5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getModuleBitCount(Lcom/google/zxing/common/BitMatrix;IIZII)[I

    move-result-object v7

    .line 415
    .local v7, "moduleBitCount":[I
    if-nez v7, :cond_0

    .line 416
    const/4 v9, 0x0

    .line 456
    :goto_0
    return-object v9

    .line 419
    :cond_0
    invoke-static {v7}, Lcom/google/zxing/pdf417/PDF417Common;->getBitCountSum([I)I

    move-result v3

    .line 420
    .local v3, "codewordBitCount":I
    if-eqz p3, :cond_1

    .line 421
    add-int v5, p4, v3

    .line 445
    .local v5, "endColumn":I
    :goto_1
    move/from16 v0, p6

    move/from16 v1, p7

    invoke-static {v3, v0, v1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->checkCodewordSkew(III)Z

    move-result v9

    if-nez v9, :cond_3

    .line 448
    const/4 v9, 0x0

    goto :goto_0

    .line 423
    .end local v5    # "endColumn":I
    :cond_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v9, v7

    div-int/lit8 v9, v9, 0x2

    if-ge v6, v9, :cond_2

    .line 424
    aget v8, v7, v6

    .line 425
    .local v8, "tmpCount":I
    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v6

    aget v9, v7, v9

    aput v9, v7, v6

    .line 426
    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v6

    aput v8, v7, v9

    .line 423
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 428
    .end local v8    # "tmpCount":I
    :cond_2
    move v5, p4

    .line 429
    .restart local v5    # "endColumn":I
    sub-int p4, v5, v3

    goto :goto_1

    .line 451
    .end local v6    # "i":I
    :cond_3
    invoke-static {v7}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getDecodedValue([I)I

    move-result v4

    .line 452
    .local v4, "decodedValue":I
    invoke-static {v4}, Lcom/google/zxing/pdf417/PDF417Common;->getCodeword(I)I

    move-result v2

    .line 453
    .local v2, "codeword":I
    const/4 v9, -0x1

    if-ne v2, v9, :cond_4

    .line 454
    const/4 v9, 0x0

    goto :goto_0

    .line 456
    :cond_4
    new-instance v9, Lcom/google/zxing/pdf417/decoder/Codeword;

    invoke-static {v4}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getCodewordBucketNumber(I)I

    move-result v10

    invoke-direct {v9, p4, v5, v10, v2}, Lcom/google/zxing/pdf417/decoder/Codeword;-><init>(IIII)V

    goto :goto_0
.end method

.method private static getBarcodeMetadata(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .locals 5
    .param p0, "leftRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .param p1, "rightRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    .prologue
    const/4 v2, 0x0

    .line 187
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    .local v0, "leftBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-nez v0, :cond_3

    .line 189
    .end local v0    # "leftBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    :cond_0
    if-nez p1, :cond_2

    .line 202
    :cond_1
    :goto_0
    return-object v2

    .line 189
    :cond_2
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v2

    goto :goto_0

    .line 192
    .restart local v0    # "leftBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    .local v1, "rightBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-nez v1, :cond_5

    .end local v1    # "rightBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    :cond_4
    move-object v2, v0

    .line 194
    goto :goto_0

    .line 197
    .restart local v1    # "rightBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    :cond_5
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v4

    if-eq v3, v4, :cond_6

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v4

    if-eq v3, v4, :cond_6

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v4

    if-ne v3, v4, :cond_1

    :cond_6
    move-object v2, v0

    .line 202
    goto :goto_0
.end method

.method private static getBitCountForCodeword(I)[I
    .locals 4
    .param p0, "codeword"    # I

    .prologue
    .line 583
    const/16 v3, 0x8

    new-array v2, v3, [I

    .line 584
    .local v2, "result":[I
    const/4 v1, 0x0

    .line 585
    .local v1, "previousValue":I
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .line 587
    .local v0, "i":I
    :goto_0
    and-int/lit8 v3, p0, 0x1

    if-eq v3, v1, :cond_0

    .line 588
    and-int/lit8 v1, p0, 0x1

    .line 589
    add-int/lit8 v0, v0, -0x1

    .line 590
    if-gez v0, :cond_0

    .line 597
    return-object v2

    .line 594
    :cond_0
    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    .line 595
    shr-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method private static getCodewordBucketNumber(I)I
    .locals 1
    .param p0, "codeword"    # I

    .prologue
    .line 601
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getBitCountForCodeword(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getCodewordBucketNumber([I)I

    move-result v0

    return v0
.end method

.method private static getCodewordBucketNumber([I)I
    .locals 2
    .param p0, "moduleBitCount"    # [I

    .prologue
    .line 605
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p0, v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p0, v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x9

    return v0
.end method

.method private static getMax([I)I
    .locals 5
    .param p0, "values"    # [I

    .prologue
    .line 177
    const/4 v3, -0x1

    .line 178
    .local v3, "maxValue":I
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v4, v0, v1

    .line 179
    .local v4, "value":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v4    # "value":I
    :cond_0
    return v3
.end method

.method private static getModuleBitCount(Lcom/google/zxing/common/BitMatrix;IIZII)[I
    .locals 7
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "minColumn"    # I
    .param p2, "maxColumn"    # I
    .param p3, "leftToRight"    # Z
    .param p4, "startColumn"    # I
    .param p5, "imageRow"    # I

    .prologue
    const/4 v5, 0x1

    .line 465
    move v0, p4

    .line 466
    .local v0, "imageColumn":I
    const/16 v6, 0x8

    new-array v2, v6, [I

    .line 467
    .local v2, "moduleBitCount":[I
    const/4 v3, 0x0

    .line 468
    .local v3, "moduleNumber":I
    if-eqz p3, :cond_2

    move v1, v5

    .line 469
    .local v1, "increment":I
    :goto_0
    move v4, p3

    .line 470
    .local v4, "previousPixelValue":Z
    :goto_1
    if-eqz p3, :cond_0

    if-lt v0, p2, :cond_1

    :cond_0
    if-nez p3, :cond_5

    if-lt v0, p1, :cond_5

    :cond_1
    array-length v6, v2

    if-ge v3, v6, :cond_5

    .line 472
    invoke-virtual {p0, v0, p5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-ne v6, v4, :cond_3

    .line 473
    aget v6, v2, v3

    add-int/lit8 v6, v6, 0x1

    aput v6, v2, v3

    .line 474
    add-int/2addr v0, v1

    goto :goto_1

    .line 468
    .end local v1    # "increment":I
    .end local v4    # "previousPixelValue":Z
    :cond_2
    const/4 v1, -0x1

    goto :goto_0

    .line 476
    .restart local v1    # "increment":I
    .restart local v4    # "previousPixelValue":Z
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 477
    if-nez v4, :cond_4

    move v4, v5

    :goto_2
    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 480
    :cond_5
    array-length v5, v2

    if-eq v3, v5, :cond_8

    if-eqz p3, :cond_6

    if-eq v0, p2, :cond_7

    :cond_6
    if-nez p3, :cond_9

    if-ne v0, p1, :cond_9

    :cond_7
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_9

    .line 484
    .end local v2    # "moduleBitCount":[I
    :cond_8
    :goto_3
    return-object v2

    .restart local v2    # "moduleBitCount":[I
    :cond_9
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private static getNumberOfECCodeWords(I)I
    .locals 1
    .param p0, "barcodeECLevel"    # I

    .prologue
    .line 488
    const/4 v0, 0x2

    shl-int/2addr v0, p0

    return v0
.end method

.method private static getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .locals 12
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .param p2, "startPoint"    # Lcom/google/zxing/ResultPoint;
    .param p3, "leftToRight"    # Z
    .param p4, "minCodewordWidth"    # I
    .param p5, "maxCodewordWidth"    # I

    .prologue
    .line 211
    new-instance v11, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    invoke-direct {v11, p1, p3}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    .line 213
    .local v11, "rowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/4 v0, 0x2

    if-ge v9, v0, :cond_4

    .line 214
    if-nez v9, :cond_1

    const/4 v10, 0x1

    .line 215
    .local v10, "increment":I
    :goto_1
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v4, v0

    .line 216
    .local v4, "startColumn":I
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v5, v0

    .local v5, "imageRow":I
    :goto_2
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v0

    if-gt v5, v0, :cond_3

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v0

    if-lt v5, v0, :cond_3

    .line 218
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    move-object v0, p0

    move v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v8

    .line 220
    .local v8, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v8, :cond_0

    .line 221
    invoke-virtual {v11, v5, v8}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V

    .line 222
    if-eqz p3, :cond_2

    .line 223
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v4

    .line 217
    :cond_0
    :goto_3
    add-int/2addr v5, v10

    goto :goto_2

    .line 214
    .end local v4    # "startColumn":I
    .end local v5    # "imageRow":I
    .end local v8    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v10    # "increment":I
    :cond_1
    const/4 v10, -0x1

    goto :goto_1

    .line 225
    .restart local v4    # "startColumn":I
    .restart local v5    # "imageRow":I
    .restart local v8    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v10    # "increment":I
    :cond_2
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v4

    goto :goto_3

    .line 213
    .end local v8    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 230
    .end local v4    # "startColumn":I
    .end local v5    # "imageRow":I
    .end local v10    # "increment":I
    :cond_4
    return-object v11
.end method

.method private static getStartColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;IIZ)I
    .locals 11
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .param p1, "barcodeColumn"    # I
    .param p2, "imageRow"    # I
    .param p3, "leftToRight"    # Z

    .prologue
    .line 366
    if-eqz p3, :cond_1

    const/4 v4, 0x1

    .line 367
    .local v4, "offset":I
    :goto_0
    const/4 v1, 0x0

    .line 368
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    sub-int v7, p1, v4

    invoke-static {p0, v7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 369
    sub-int v7, p1, v4

    invoke-virtual {p0, v7}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodeword(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 371
    :cond_0
    if-eqz v1, :cond_3

    .line 372
    if-eqz p3, :cond_2

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v7

    .line 398
    :goto_1
    return v7

    .line 366
    .end local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v4    # "offset":I
    :cond_1
    const/4 v4, -0x1

    goto :goto_0

    .line 372
    .restart local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v4    # "offset":I
    :cond_2
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v7

    goto :goto_1

    .line 374
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 375
    if-eqz v1, :cond_5

    .line 376
    if-eqz p3, :cond_4

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v7

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v7

    goto :goto_1

    .line 378
    :cond_5
    sub-int v7, p1, v4

    invoke-static {p0, v7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 379
    sub-int v7, p1, v4

    invoke-virtual {p0, v7}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 381
    :cond_6
    if-eqz v1, :cond_8

    .line 382
    if-eqz p3, :cond_7

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v7

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v7

    goto :goto_1

    .line 384
    :cond_8
    const/4 v6, 0x0

    .line 386
    .local v6, "skippedColumns":I
    :goto_2
    sub-int v7, p1, v4

    invoke-static {p0, v7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 387
    sub-int/2addr p1, v4

    .line 388
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .local v0, "arr$":[Lcom/google/zxing/pdf417/decoder/Codeword;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v3, :cond_b

    aget-object v5, v0, v2

    .line 389
    .local v5, "previousRowCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v5, :cond_a

    .line 390
    if-eqz p3, :cond_9

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v7

    :goto_4
    mul-int v8, v4, v6

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v9

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v10

    sub-int/2addr v9, v10

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    goto :goto_1

    :cond_9
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v7

    goto :goto_4

    .line 388
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 396
    .end local v5    # "previousRowCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 398
    .end local v0    # "arr$":[Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_c
    if-eqz p3, :cond_d

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinX()I

    move-result v7

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v7

    goto/16 :goto_1
.end method

.method private static isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z
    .locals 1
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .param p1, "barcodeColumn"    # I

    .prologue
    .line 359
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static merge(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .locals 4
    .param p0, "leftRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .param p1, "rightRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 129
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-object v2

    .line 132
    :cond_1
    invoke-static {p0, p1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getBarcodeMetadata(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    .line 133
    .local v0, "barcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-eqz v0, :cond_0

    .line 136
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v2

    invoke-static {p1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->merge(Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/pdf417/decoder/BoundingBox;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v1

    .line 138
    .local v1, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    new-instance v2, Lcom/google/zxing/pdf417/decoder/DetectionResult;

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;-><init>(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    goto :goto_0
.end method

.method public static toString([[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)Ljava/lang/String;
    .locals 10
    .param p0, "barcodeMatrix"    # [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 609
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    .line 610
    .local v2, "formatter":Ljava/util/Formatter;
    const/4 v4, 0x0

    .local v4, "row":I
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_2

    .line 611
    const-string v5, "Row %2d: "

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v2, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 612
    const/4 v1, 0x0

    .local v1, "column":I
    :goto_1
    aget-object v5, p0, v4

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 613
    aget-object v5, p0, v4

    aget-object v0, v5, v1

    .line 614
    .local v0, "barcodeValue":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_0

    .line 615
    const-string v6, "        "

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 612
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 617
    :cond_0
    const-string v5, "%4d(%2d)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v7

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v7

    aget v7, v7, v8

    invoke-virtual {v0, v7}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getConfidence(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v2, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_2

    .line 621
    .end local v0    # "barcodeValue":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    :cond_1
    const-string v5, "%n"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 610
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 623
    .end local v1    # "column":I
    :cond_2
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 624
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    .line 625
    return-object v3
.end method

.method private static verifyCodewordCount([II)V
    .locals 4
    .param p0, "codewords"    # [I
    .param p1, "numECCodewords"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 560
    array-length v1, p0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 563
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 568
    :cond_0
    aget v0, p0, v3

    .line 569
    .local v0, "numberOfCodewords":I
    array-length v1, p0

    if-le v0, v1, :cond_1

    .line 570
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 572
    :cond_1
    if-nez v0, :cond_2

    .line 574
    array-length v1, p0

    if-ge p1, v1, :cond_3

    .line 575
    array-length v1, p0

    sub-int/2addr v1, p1

    aput v1, p0, v3

    .line 580
    :cond_2
    return-void

    .line 577
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1
.end method
