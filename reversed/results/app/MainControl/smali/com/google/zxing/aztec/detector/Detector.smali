.class public final Lcom/google/zxing/aztec/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/detector/Detector$Point;
    }
.end annotation


# static fields
.field private static final EXPECTED_CORNER_BITS:[I


# instance fields
.field private compact:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private nbCenterLayers:I

.field private nbDataBlocks:I

.field private nbLayers:I

.field private shift:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/aztec/detector/Detector;->EXPECTED_CORNER_BITS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xee0
        0x1dc
        0x83b
        0x707
    .end array-data
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 49
    return-void
.end method

.method private static distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .locals 4
    .param p0, "a"    # Lcom/google/zxing/ResultPoint;
    .param p1, "b"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    return v0
.end method

.method private static distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F
    .locals 4
    .param p0, "a"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .param p1, "b"    # Lcom/google/zxing/aztec/detector/Detector$Point;

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v0

    return v0
.end method

.method private static expandSquare([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;
    .locals 11
    .param p0, "cornerPoints"    # [Lcom/google/zxing/ResultPoint;
    .param p1, "oldSide"    # F
    .param p2, "newSide"    # F

    .prologue
    .line 527
    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, p1

    div-float v4, p2, v9

    .line 528
    .local v4, "ratio":F
    const/4 v9, 0x0

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    const/4 v10, 0x2

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    sub-float v2, v9, v10

    .line 529
    .local v2, "dx":F
    const/4 v9, 0x0

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    const/4 v10, 0x2

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    sub-float v3, v9, v10

    .line 530
    .local v3, "dy":F
    const/4 v9, 0x0

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    const/4 v10, 0x2

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v0, v9, v10

    .line 531
    .local v0, "centerx":F
    const/4 v9, 0x0

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    const/4 v10, 0x2

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v1, v9, v10

    .line 533
    .local v1, "centery":F
    new-instance v5, Lcom/google/zxing/ResultPoint;

    mul-float v9, v4, v2

    add-float/2addr v9, v0

    mul-float v10, v4, v3

    add-float/2addr v10, v1

    invoke-direct {v5, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 534
    .local v5, "result0":Lcom/google/zxing/ResultPoint;
    new-instance v7, Lcom/google/zxing/ResultPoint;

    mul-float v9, v4, v2

    sub-float v9, v0, v9

    mul-float v10, v4, v3

    sub-float v10, v1, v10

    invoke-direct {v7, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 536
    .local v7, "result2":Lcom/google/zxing/ResultPoint;
    const/4 v9, 0x1

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    const/4 v10, 0x3

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    sub-float v2, v9, v10

    .line 537
    const/4 v9, 0x1

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    const/4 v10, 0x3

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    sub-float v3, v9, v10

    .line 538
    const/4 v9, 0x1

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    const/4 v10, 0x3

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v0, v9, v10

    .line 539
    const/4 v9, 0x1

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    const/4 v10, 0x3

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v1, v9, v10

    .line 540
    new-instance v6, Lcom/google/zxing/ResultPoint;

    mul-float v9, v4, v2

    add-float/2addr v9, v0

    mul-float v10, v4, v3

    add-float/2addr v10, v1

    invoke-direct {v6, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 541
    .local v6, "result1":Lcom/google/zxing/ResultPoint;
    new-instance v8, Lcom/google/zxing/ResultPoint;

    mul-float v9, v4, v2

    sub-float v9, v0, v9

    mul-float v10, v4, v3

    sub-float v10, v1, v10

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 543
    .local v8, "result3":Lcom/google/zxing/ResultPoint;
    const/4 v9, 0x4

    new-array v9, v9, [Lcom/google/zxing/ResultPoint;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    const/4 v10, 0x2

    aput-object v7, v9, v10

    const/4 v10, 0x3

    aput-object v8, v9, v10

    return-object v9
.end method

.method private extractParameters([Lcom/google/zxing/ResultPoint;)V
    .locals 14
    .param p1, "bullsEyeCorners"    # [Lcom/google/zxing/ResultPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 100
    aget-object v7, p1, v9

    invoke-direct {p0, v7}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v7

    if-eqz v7, :cond_0

    aget-object v7, p1, v10

    invoke-direct {p0, v7}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v7

    if-eqz v7, :cond_0

    aget-object v7, p1, v11

    invoke-direct {p0, v7}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v7

    if-eqz v7, :cond_0

    aget-object v7, p1, v12

    invoke-direct {p0, v7}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 102
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7

    .line 104
    :cond_1
    iget v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v2, v7, 0x2

    .line 106
    .local v2, "length":I
    new-array v6, v13, [I

    aget-object v7, p1, v9

    aget-object v8, p1, v10

    invoke-direct {p0, v7, v8, v2}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v7

    aput v7, v6, v9

    aget-object v7, p1, v10

    aget-object v8, p1, v11

    invoke-direct {p0, v7, v8, v2}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v7

    aput v7, v6, v10

    aget-object v7, p1, v11

    aget-object v8, p1, v12

    invoke-direct {p0, v7, v8, v2}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v7

    aput v7, v6, v11

    aget-object v7, p1, v12

    aget-object v8, p1, v9

    invoke-direct {p0, v7, v8, v2}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v7

    aput v7, v6, v12

    .line 117
    .local v6, "sides":[I
    invoke-static {v6, v2}, Lcom/google/zxing/aztec/detector/Detector;->getRotation([II)I

    move-result v7

    iput v7, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    .line 120
    const-wide/16 v3, 0x0

    .line 121
    .local v3, "parameterData":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v13, :cond_3

    .line 122
    iget v7, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/2addr v7, v1

    rem-int/lit8 v7, v7, 0x4

    aget v5, v6, v7

    .line 123
    .local v5, "side":I
    iget-boolean v7, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v7, :cond_2

    .line 125
    const/4 v7, 0x7

    shl-long/2addr v3, v7

    .line 126
    shr-int/lit8 v7, v5, 0x1

    and-int/lit8 v7, v7, 0x7f

    int-to-long v7, v7

    add-long/2addr v3, v7

    .line 121
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_2
    const/16 v7, 0xa

    shl-long/2addr v3, v7

    .line 130
    shr-int/lit8 v7, v5, 0x2

    and-int/lit16 v7, v7, 0x3e0

    shr-int/lit8 v8, v5, 0x1

    and-int/lit8 v8, v8, 0x1f

    add-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v3, v7

    goto :goto_1

    .line 136
    .end local v5    # "side":I
    :cond_3
    iget-boolean v7, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    invoke-static {v3, v4, v7}, Lcom/google/zxing/aztec/detector/Detector;->getCorrectedParameterData(JZ)I

    move-result v0

    .line 138
    .local v0, "correctedData":I
    iget-boolean v7, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v7, :cond_4

    .line 140
    shr-int/lit8 v7, v0, 0x6

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    .line 141
    and-int/lit8 v7, v0, 0x3f

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    .line 147
    :goto_2
    return-void

    .line 144
    :cond_4
    shr-int/lit8 v7, v0, 0xb

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    .line 145
    and-int/lit16 v7, v0, 0x7ff

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    goto :goto_2
.end method

.method private getBullsEyeCorners(Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/ResultPoint;
    .locals 21
    .param p1, "pCenter"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 237
    move-object/from16 v4, p1

    .line 238
    .local v4, "pina":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v6, p1

    .line 239
    .local v6, "pinb":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v8, p1

    .line 240
    .local v8, "pinc":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v10, p1

    .line 242
    .local v10, "pind":Lcom/google/zxing/aztec/detector/Detector$Point;
    const/4 v3, 0x1

    .line 244
    .local v3, "color":Z
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v17, v0

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 245
    const/16 v17, 0x1

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v12

    .line 246
    .local v12, "pouta":Lcom/google/zxing/aztec/detector/Detector$Point;
    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v6, v3, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v13

    .line 247
    .local v13, "poutb":Lcom/google/zxing/aztec/detector/Detector$Point;
    const/16 v17, -0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v8, v3, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v14

    .line 248
    .local v14, "poutc":Lcom/google/zxing/aztec/detector/Detector$Point;
    const/16 v17, -0x1

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v10, v3, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v15

    .line 254
    .local v15, "poutd":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 255
    invoke-static {v15, v12}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    invoke-static {v10, v4}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    div-float v16, v17, v18

    .line 256
    .local v16, "q":F
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x3fe8000000000000L    # 0.75

    cmpg-double v17, v17, v19

    if-ltz v17, :cond_0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x3ff4000000000000L    # 1.25

    cmpl-double v17, v17, v19

    if-gtz v17, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/google/zxing/aztec/detector/Detector;->isWhiteOrBlackRectangle(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 269
    .end local v12    # "pouta":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v13    # "poutb":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v14    # "poutc":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v15    # "poutd":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v16    # "q":F
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v17, v0

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 270
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v17

    throw v17

    .line 261
    .restart local v12    # "pouta":Lcom/google/zxing/aztec/detector/Detector$Point;
    .restart local v13    # "poutb":Lcom/google/zxing/aztec/detector/Detector$Point;
    .restart local v14    # "poutc":Lcom/google/zxing/aztec/detector/Detector$Point;
    .restart local v15    # "poutd":Lcom/google/zxing/aztec/detector/Detector$Point;
    :cond_1
    move-object v4, v12

    .line 262
    move-object v6, v13

    .line 263
    move-object v8, v14

    .line 264
    move-object v10, v15

    .line 266
    if-nez v3, :cond_2

    const/4 v3, 0x1

    .line 244
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    goto/16 :goto_0

    .line 266
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 273
    .end local v12    # "pouta":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v13    # "poutb":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v14    # "poutc":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v15    # "poutd":Lcom/google/zxing/aztec/detector/Detector$Point;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v17, 0x1

    :goto_2
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    .line 277
    new-instance v5, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v4}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    invoke-virtual {v4}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    sub-float v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 278
    .local v5, "pinax":Lcom/google/zxing/ResultPoint;
    new-instance v7, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v6}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    invoke-virtual {v6}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v7, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 279
    .local v7, "pinbx":Lcom/google/zxing/ResultPoint;
    new-instance v9, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f000000    # 0.5f

    sub-float v17, v17, v18

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v9, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 280
    .local v9, "pincx":Lcom/google/zxing/ResultPoint;
    new-instance v11, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v10}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f000000    # 0.5f

    sub-float v17, v17, v18

    invoke-virtual {v10}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    sub-float v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v11, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 284
    .local v11, "pindx":Lcom/google/zxing/ResultPoint;
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v5, v17, v18

    const/16 v18, 0x1

    aput-object v7, v17, v18

    const/16 v18, 0x2

    aput-object v9, v17, v18

    const/16 v18, 0x3

    aput-object v11, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    add-int/lit8 v18, v18, -0x3

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/google/zxing/aztec/detector/Detector;->expandSquare([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;

    move-result-object v17

    return-object v17

    .line 273
    .end local v5    # "pinax":Lcom/google/zxing/ResultPoint;
    .end local v7    # "pinbx":Lcom/google/zxing/ResultPoint;
    .end local v9    # "pincx":Lcom/google/zxing/ResultPoint;
    .end local v11    # "pindx":Lcom/google/zxing/ResultPoint;
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_2
.end method

.method private getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I
    .locals 12
    .param p1, "p1"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .param p2, "p2"    # Lcom/google/zxing/aztec/detector/Detector$Point;

    .prologue
    .line 463
    invoke-static {p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v1

    .line 464
    .local v1, "d":F
    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v9

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float v2, v9, v1

    .line 465
    .local v2, "dx":F
    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v9

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float v3, v9, v1

    .line 466
    .local v3, "dy":F
    const/4 v5, 0x0

    .line 468
    .local v5, "error":I
    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v9

    int-to-float v7, v9

    .line 469
    .local v7, "px":F
    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v9

    int-to-float v8, v9

    .line 471
    .local v8, "py":F
    iget-object v9, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v10

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    .line 473
    .local v0, "colorModel":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    int-to-float v9, v6

    cmpg-float v9, v9, v1

    if-gez v9, :cond_1

    .line 474
    add-float/2addr v7, v2

    .line 475
    add-float/2addr v8, v3

    .line 476
    iget-object v9, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-static {v7}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v10

    invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eq v9, v0, :cond_0

    .line 477
    add-int/lit8 v5, v5, 0x1

    .line 473
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 481
    :cond_1
    int-to-float v9, v5

    div-float v4, v9, v1

    .line 483
    .local v4, "errRatio":F
    const v9, 0x3dcccccd    # 0.1f

    cmpl-float v9, v4, v9

    if-lez v9, :cond_2

    const v9, 0x3f666666    # 0.9f

    cmpg-float v9, v4, v9

    if-gez v9, :cond_2

    .line 484
    const/4 v9, 0x0

    .line 487
    :goto_1
    return v9

    :cond_2
    const v9, 0x3dcccccd    # 0.1f

    cmpg-float v9, v4, v9

    if-gtz v9, :cond_3

    const/4 v9, 0x1

    :goto_2
    if-ne v9, v0, :cond_4

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    const/4 v9, -0x1

    goto :goto_1
.end method

.method private static getCorrectedParameterData(JZ)I
    .locals 10
    .param p0, "parameterData"    # J
    .param p2, "compact"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 198
    if-eqz p2, :cond_0

    .line 199
    const/4 v2, 0x7

    .line 200
    .local v2, "numCodewords":I
    const/4 v3, 0x2

    .line 206
    .local v3, "numDataCodewords":I
    :goto_0
    sub-int v4, v2, v3

    .line 207
    .local v4, "numECCodewords":I
    new-array v5, v2, [I

    .line 208
    .local v5, "parameterWords":[I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 209
    long-to-int v8, p0

    and-int/lit8 v8, v8, 0xf

    aput v8, v5, v0

    .line 210
    const/4 v8, 0x4

    shr-long/2addr p0, v8

    .line 208
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 202
    .end local v0    # "i":I
    .end local v2    # "numCodewords":I
    .end local v3    # "numDataCodewords":I
    .end local v4    # "numECCodewords":I
    .end local v5    # "parameterWords":[I
    :cond_0
    const/16 v2, 0xa

    .line 203
    .restart local v2    # "numCodewords":I
    const/4 v3, 0x4

    .restart local v3    # "numDataCodewords":I
    goto :goto_0

    .line 213
    .restart local v0    # "i":I
    .restart local v4    # "numECCodewords":I
    .restart local v5    # "parameterWords":[I
    :cond_1
    :try_start_0
    new-instance v7, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v8, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v7, v8}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 214
    .local v7, "rsDecoder":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    invoke-virtual {v7, v5, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    const/4 v6, 0x0

    .line 220
    .local v6, "result":I
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_2

    .line 221
    shl-int/lit8 v8, v6, 0x4

    aget v9, v5, v0

    add-int v6, v8, v9

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 215
    .end local v6    # "result":I
    .end local v7    # "rsDecoder":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    :catch_0
    move-exception v1

    .line 216
    .local v1, "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8

    .line 223
    .end local v1    # "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    .restart local v6    # "result":I
    .restart local v7    # "rsDecoder":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    :cond_2
    return v6
.end method

.method private getDimension()I
    .locals 2

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v0, :cond_0

    .line 566
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xb

    .line 571
    :goto_0
    return v0

    .line 568
    :cond_0
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 569
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xf

    goto :goto_0

    .line 571
    :cond_1
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    add-int/lit8 v1, v1, -0x4

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xf

    goto :goto_0
.end method

.method private getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
    .locals 3
    .param p1, "init"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .param p2, "color"    # Z
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 494
    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v2

    add-int v0, v2, p3

    .line 495
    .local v0, "x":I
    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v2

    add-int v1, v2, p4

    .line 497
    .local v1, "y":I
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-ne v2, p2, :cond_0

    .line 498
    add-int/2addr v0, p3

    .line 499
    add-int/2addr v1, p4

    goto :goto_0

    .line 502
    :cond_0
    sub-int/2addr v0, p3

    .line 503
    sub-int/2addr v1, p4

    .line 505
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-ne v2, p2, :cond_1

    .line 506
    add-int/2addr v0, p3

    goto :goto_1

    .line 508
    :cond_1
    sub-int/2addr v0, p3

    .line 510
    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-ne v2, p2, :cond_2

    .line 511
    add-int/2addr v1, p4

    goto :goto_2

    .line 513
    :cond_2
    sub-int/2addr v1, p4

    .line 515
    new-instance v2, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    return-object v2
.end method

.method private getMatrixCenter()Lcom/google/zxing/aztec/detector/Detector$Point;
    .locals 15

    .prologue
    const/high16 v14, 0x40800000    # 4.0f

    const/4 v13, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 304
    :try_start_0
    new-instance v8, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    iget-object v9, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v8, v9}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v8}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 305
    .local v0, "cornerPoints":[Lcom/google/zxing/ResultPoint;
    const/4 v8, 0x0

    aget-object v4, v0, v8

    .line 306
    .local v4, "pointA":Lcom/google/zxing/ResultPoint;
    const/4 v8, 0x1

    aget-object v5, v0, v8

    .line 307
    .local v5, "pointB":Lcom/google/zxing/ResultPoint;
    const/4 v8, 0x2

    aget-object v6, v0, v8

    .line 308
    .local v6, "pointC":Lcom/google/zxing/ResultPoint;
    const/4 v8, 0x3

    aget-object v7, v0, v8
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v0    # "cornerPoints":[Lcom/google/zxing/ResultPoint;
    .local v7, "pointD":Lcom/google/zxing/ResultPoint;
    :goto_0
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    add-float/2addr v8, v9

    div-float/2addr v8, v14

    invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    .line 325
    .local v1, "cx":I
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v8, v9

    div-float/2addr v8, v14

    invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    .line 331
    .local v2, "cy":I
    :try_start_1
    new-instance v8, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    iget-object v9, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    const/16 v10, 0xf

    invoke-direct {v8, v9, v10, v1, v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    invoke-virtual {v8}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 332
    .restart local v0    # "cornerPoints":[Lcom/google/zxing/ResultPoint;
    const/4 v8, 0x0

    aget-object v4, v0, v8

    .line 333
    const/4 v8, 0x1

    aget-object v5, v0, v8

    .line 334
    const/4 v8, 0x2

    aget-object v6, v0, v8

    .line 335
    const/4 v8, 0x3

    aget-object v7, v0, v8
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 346
    .end local v0    # "cornerPoints":[Lcom/google/zxing/ResultPoint;
    :goto_1
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    add-float/2addr v8, v9

    div-float/2addr v8, v14

    invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    .line 347
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v8, v9

    div-float/2addr v8, v14

    invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    .line 349
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v8, v1, v2}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    return-object v8

    .line 310
    .end local v1    # "cx":I
    .end local v2    # "cy":I
    .end local v4    # "pointA":Lcom/google/zxing/ResultPoint;
    .end local v5    # "pointB":Lcom/google/zxing/ResultPoint;
    .end local v6    # "pointC":Lcom/google/zxing/ResultPoint;
    .end local v7    # "pointD":Lcom/google/zxing/ResultPoint;
    :catch_0
    move-exception v3

    .line 314
    .local v3, "e":Lcom/google/zxing/NotFoundException;
    iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    div-int/lit8 v1, v8, 0x2

    .line 315
    .restart local v1    # "cx":I
    iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v8

    div-int/lit8 v2, v8, 0x2

    .line 316
    .restart local v2    # "cy":I
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v9, v1, 0x7

    add-int/lit8 v10, v2, -0x7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v8, v11, v12, v13}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 317
    .restart local v4    # "pointA":Lcom/google/zxing/ResultPoint;
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v9, v1, 0x7

    add-int/lit8 v10, v2, 0x7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v8, v11, v12, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 318
    .restart local v5    # "pointB":Lcom/google/zxing/ResultPoint;
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v9, v1, -0x7

    add-int/lit8 v10, v2, 0x7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v8, v11, v13, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 319
    .restart local v6    # "pointC":Lcom/google/zxing/ResultPoint;
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v9, v1, -0x7

    add-int/lit8 v10, v2, -0x7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v8, v11, v13, v13}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v7

    .restart local v7    # "pointD":Lcom/google/zxing/ResultPoint;
    goto/16 :goto_0

    .line 336
    .end local v3    # "e":Lcom/google/zxing/NotFoundException;
    :catch_1
    move-exception v3

    .line 339
    .restart local v3    # "e":Lcom/google/zxing/NotFoundException;
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v9, v1, 0x7

    add-int/lit8 v10, v2, -0x7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v8, v11, v12, v13}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 340
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v9, v1, 0x7

    add-int/lit8 v10, v2, 0x7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v8, v11, v12, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 341
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v9, v1, -0x7

    add-int/lit8 v10, v2, 0x7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v8, v11, v13, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 342
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v9, v1, -0x7

    add-int/lit8 v10, v2, -0x7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v8, v11, v13, v13}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v7

    goto/16 :goto_1
.end method

.method private getMatrixCornerPoints([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .locals 2
    .param p1, "bullsEyeCorners"    # [Lcom/google/zxing/ResultPoint;

    .prologue
    .line 359
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/google/zxing/aztec/detector/Detector;->getDimension()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->expandSquare([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    return-object v0
.end method

.method private static getRotation([II)I
    .locals 9
    .param p0, "sides"    # [I
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v1, 0x0

    .line 167
    .local v1, "cornerBits":I
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v5, v0, v2

    .line 169
    .local v5, "side":I
    add-int/lit8 v7, p1, -0x2

    shr-int v7, v5, v7

    shl-int/lit8 v7, v7, 0x1

    and-int/lit8 v8, v5, 0x1

    add-int v6, v7, v8

    .line 170
    .local v6, "t":I
    shl-int/lit8 v7, v1, 0x3

    add-int v1, v7, v6

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    .end local v5    # "side":I
    .end local v6    # "t":I
    :cond_0
    and-int/lit8 v7, v1, 0x1

    shl-int/lit8 v7, v7, 0xb

    shr-int/lit8 v8, v1, 0x1

    add-int v1, v7, v8

    .line 179
    const/4 v4, 0x0

    .local v4, "shift":I
    :goto_1
    const/4 v7, 0x4

    if-ge v4, v7, :cond_2

    .line 180
    sget-object v7, Lcom/google/zxing/aztec/detector/Detector;->EXPECTED_CORNER_BITS:[I

    aget v7, v7, v4

    xor-int/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->bitCount(I)I

    move-result v7

    const/4 v8, 0x2

    if-gt v7, v8, :cond_1

    .line 181
    return v4

    .line 179
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 184
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7
.end method

.method private isValid(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 547
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValid(Lcom/google/zxing/ResultPoint;)Z
    .locals 3
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 551
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    .line 552
    .local v0, "x":I
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    .line 553
    .local v1, "y":I
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    return v2
.end method

.method private isWhiteOrBlackRectangle(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)Z
    .locals 10
    .param p1, "p1"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .param p2, "p2"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .param p3, "p3"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .param p4, "p4"    # Lcom/google/zxing/aztec/detector/Detector$Point;

    .prologue
    const/4 v7, 0x0

    .line 426
    const/4 v2, 0x3

    .line 428
    .local v2, "corr":I
    new-instance v3, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v9

    add-int/2addr v9, v2

    invoke-direct {v3, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    .line 429
    .end local p1    # "p1":Lcom/google/zxing/aztec/detector/Detector$Point;
    .local v3, "p1":Lcom/google/zxing/aztec/detector/Detector$Point;
    new-instance v4, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-direct {v4, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    .line 430
    .end local p2    # "p2":Lcom/google/zxing/aztec/detector/Detector$Point;
    .local v4, "p2":Lcom/google/zxing/aztec/detector/Detector$Point;
    new-instance v5, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p3}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {p3}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-direct {v5, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    .line 431
    .end local p3    # "p3":Lcom/google/zxing/aztec/detector/Detector$Point;
    .local v5, "p3":Lcom/google/zxing/aztec/detector/Detector$Point;
    new-instance v6, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p4}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {p4}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v9

    add-int/2addr v9, v2

    invoke-direct {v6, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    .line 433
    .end local p4    # "p4":Lcom/google/zxing/aztec/detector/Detector$Point;
    .local v6, "p4":Lcom/google/zxing/aztec/detector/Detector$Point;
    invoke-direct {p0, v6, v3}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v1

    .line 435
    .local v1, "cInit":I
    if-nez v1, :cond_1

    .line 453
    :cond_0
    :goto_0
    return v7

    .line 439
    :cond_1
    invoke-direct {p0, v3, v4}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v0

    .line 441
    .local v0, "c":I
    if-ne v0, v1, :cond_0

    .line 445
    invoke-direct {p0, v4, v5}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v0

    .line 447
    if-ne v0, v1, :cond_0

    .line 451
    invoke-direct {p0, v5, v6}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v0

    .line 453
    if-ne v0, v1, :cond_0

    const/4 v7, 0x1

    goto :goto_0
.end method

.method private sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/common/BitMatrix;
    .locals 21
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "topLeft"    # Lcom/google/zxing/ResultPoint;
    .param p3, "topRight"    # Lcom/google/zxing/ResultPoint;
    .param p4, "bottomRight"    # Lcom/google/zxing/ResultPoint;
    .param p5, "bottomLeft"    # Lcom/google/zxing/ResultPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v1

    .line 374
    .local v1, "sampler":Lcom/google/zxing/common/GridSampler;
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/aztec/detector/Detector;->getDimension()I

    move-result v3

    .line 376
    .local v3, "dimension":I
    int-to-float v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    int-to-float v4, v4

    sub-float v5, v2, v4

    .line 377
    .local v5, "low":F
    int-to-float v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    int-to-float v4, v4

    add-float v7, v2, v4

    .line 379
    .local v7, "high":F
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v17

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v18

    invoke-virtual/range {p5 .. p5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v19

    invoke-virtual/range {p5 .. p5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v20

    move-object/from16 v2, p1

    move v4, v3

    move v6, v5

    move v8, v5

    move v9, v7

    move v10, v7

    move v11, v5

    move v12, v7

    invoke-virtual/range {v1 .. v20}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    return-object v2
.end method

.method private sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I
    .locals 11
    .param p1, "p1"    # Lcom/google/zxing/ResultPoint;
    .param p2, "p2"    # Lcom/google/zxing/ResultPoint;
    .param p3, "size"    # I

    .prologue
    .line 401
    const/4 v7, 0x0

    .line 403
    .local v7, "result":I
    invoke-static {p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v0

    .line 404
    .local v0, "d":F
    int-to-float v8, p3

    div-float v4, v0, v8

    .line 405
    .local v4, "moduleSize":F
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    .line 406
    .local v5, "px":F
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    .line 407
    .local v6, "py":F
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v8, v4

    div-float v1, v8, v0

    .line 408
    .local v1, "dx":F
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v8, v4

    div-float v2, v8, v0

    .line 409
    .local v2, "dy":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_1

    .line 410
    iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    int-to-float v9, v3

    mul-float/2addr v9, v1

    add-float/2addr v9, v5

    invoke-static {v9}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v9

    int-to-float v10, v3

    mul-float/2addr v10, v2

    add-float/2addr v10, v6

    invoke-static {v10}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 411
    const/4 v8, 0x1

    sub-int v9, p3, v3

    add-int/lit8 v9, v9, -0x1

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    .line 409
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 414
    :cond_1
    return v7
.end method


# virtual methods
.method public detect()Lcom/google/zxing/aztec/AztecDetectorResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v0

    return-object v0
.end method

.method public detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;
    .locals 9
    .param p1, "isMirror"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 65
    invoke-direct {p0}, Lcom/google/zxing/aztec/detector/Detector;->getMatrixCenter()Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    .line 69
    .local v7, "pCenter":Lcom/google/zxing/aztec/detector/Detector$Point;
    invoke-direct {p0, v7}, Lcom/google/zxing/aztec/detector/Detector;->getBullsEyeCorners(Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 71
    .local v6, "bullsEyeCorners":[Lcom/google/zxing/ResultPoint;
    if-eqz p1, :cond_0

    .line 72
    aget-object v8, v6, v3

    .line 73
    .local v8, "temp":Lcom/google/zxing/ResultPoint;
    aget-object v0, v6, v4

    aput-object v0, v6, v3

    .line 74
    aput-object v8, v6, v4

    .line 78
    .end local v8    # "temp":Lcom/google/zxing/ResultPoint;
    :cond_0
    invoke-direct {p0, v6}, Lcom/google/zxing/aztec/detector/Detector;->extractParameters([Lcom/google/zxing/ResultPoint;)V

    .line 81
    iget-object v1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    rem-int/lit8 v0, v0, 0x4

    aget-object v2, v6, v0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    aget-object v3, v6, v0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/lit8 v0, v0, 0x2

    rem-int/lit8 v0, v0, 0x4

    aget-object v4, v6, v0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit8 v0, v0, 0x4

    aget-object v5, v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/aztec/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 88
    .local v1, "bits":Lcom/google/zxing/common/BitMatrix;
    invoke-direct {p0, v6}, Lcom/google/zxing/aztec/detector/Detector;->getMatrixCornerPoints([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    .line 90
    .local v2, "corners":[Lcom/google/zxing/ResultPoint;
    new-instance v0, Lcom/google/zxing/aztec/AztecDetectorResult;

    iget-boolean v3, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    iget v4, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    iget v5, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/aztec/AztecDetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;ZII)V

    return-object v0
.end method
