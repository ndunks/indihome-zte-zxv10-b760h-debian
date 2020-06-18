.class public final Lcom/google/zxing/aztec/AztecReader;
.super Ljava/lang/Object;
.source "AztecReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/aztec/AztecReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 23
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v15, 0x0

    .line 60
    .local v15, "notFoundException":Lcom/google/zxing/NotFoundException;
    const/4 v12, 0x0

    .line 61
    .local v12, "formatException":Lcom/google/zxing/FormatException;
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector;

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Lcom/google/zxing/aztec/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 62
    .local v8, "detector":Lcom/google/zxing/aztec/detector/Detector;
    const/16 v17, 0x0

    .line 63
    .local v17, "points":[Lcom/google/zxing/ResultPoint;
    const/4 v7, 0x0

    .line 65
    .local v7, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    const/16 v20, 0x0

    :try_start_0
    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v9

    .line 66
    .local v9, "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    invoke-virtual {v9}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v17

    .line 67
    new-instance v20, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct/range {v20 .. v20}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 73
    .end local v9    # "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    :goto_0
    if-nez v7, :cond_0

    .line 75
    const/16 v20, 0x1

    :try_start_1
    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v9

    .line 76
    .restart local v9    # "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    invoke-virtual {v9}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v17

    .line 77
    new-instance v20, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct/range {v20 .. v20}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    .line 89
    .end local v9    # "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    :cond_0
    if-eqz p2, :cond_3

    .line 90
    sget-object v20, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/zxing/ResultPointCallback;

    .line 91
    .local v19, "rpcb":Lcom/google/zxing/ResultPointCallback;
    if-eqz v19, :cond_3

    .line 92
    move-object/from16 v5, v17

    .local v5, "arr$":[Lcom/google/zxing/ResultPoint;
    array-length v14, v5

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1
    if-ge v13, v14, :cond_3

    aget-object v16, v5, v13

    .line 93
    .local v16, "point":Lcom/google/zxing/ResultPoint;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 92
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 68
    .end local v5    # "arr$":[Lcom/google/zxing/ResultPoint;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v16    # "point":Lcom/google/zxing/ResultPoint;
    .end local v19    # "rpcb":Lcom/google/zxing/ResultPointCallback;
    :catch_0
    move-exception v10

    .line 69
    .local v10, "e":Lcom/google/zxing/NotFoundException;
    move-object v15, v10

    .line 72
    goto :goto_0

    .line 70
    .end local v10    # "e":Lcom/google/zxing/NotFoundException;
    :catch_1
    move-exception v10

    .line 71
    .local v10, "e":Lcom/google/zxing/FormatException;
    move-object v12, v10

    goto :goto_0

    .line 78
    .end local v10    # "e":Lcom/google/zxing/FormatException;
    :catch_2
    move-exception v10

    .line 79
    .local v10, "e":Lcom/google/zxing/ReaderException;
    if-eqz v15, :cond_1

    .line 80
    throw v15

    .line 82
    :cond_1
    if-eqz v12, :cond_2

    .line 83
    throw v12

    .line 85
    :cond_2
    throw v10

    .line 98
    .end local v10    # "e":Lcom/google/zxing/ReaderException;
    :cond_3
    new-instance v18, Lcom/google/zxing/Result;

    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v21

    sget-object v22, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 100
    .local v18, "result":Lcom/google/zxing/Result;
    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object v6

    .line 101
    .local v6, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz v6, :cond_4

    .line 102
    sget-object v20, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 104
    :cond_4
    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v11

    .line 105
    .local v11, "ecLevel":Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 106
    sget-object v20, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 109
    :cond_5
    return-object v18
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method
