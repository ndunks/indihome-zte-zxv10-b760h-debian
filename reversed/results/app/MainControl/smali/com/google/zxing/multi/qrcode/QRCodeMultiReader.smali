.class public final Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;
.super Lcom/google/zxing/qrcode/QRCodeReader;
.source "QRCodeMultiReader.java"

# interfaces
.implements Lcom/google/zxing/multi/MultipleBarcodeReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$1;,
        Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;
    }
.end annotation


# static fields
.field private static final EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;

.field private static final NO_POINTS:[Lcom/google/zxing/ResultPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    new-array v0, v1, [Lcom/google/zxing/Result;

    sput-object v0, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;

    .line 51
    new-array v0, v1, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    .line 166
    return-void
.end method

.method private static processStructuredAppend(Ljava/util/List;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/Result;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    const/4 v8, 0x0

    .line 103
    .local v8, "hasSA":Z
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/zxing/Result;

    .line 104
    .local v17, "result":Lcom/google/zxing/Result;
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v21

    sget-object v22, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 105
    const/4 v8, 0x1

    .line 109
    .end local v17    # "result":Lcom/google/zxing/Result;
    :cond_1
    if-nez v8, :cond_2

    .line 163
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local p0    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    :goto_0
    return-object p0

    .line 114
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local p0    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    :cond_2
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v15, "newResults":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v19, "saResults":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/zxing/Result;

    .line 117
    .restart local v17    # "result":Lcom/google/zxing/Result;
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v21

    sget-object v22, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 119
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 123
    .end local v17    # "result":Lcom/google/zxing/Result;
    :cond_4
    new-instance v21, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;

    const/16 v22, 0x0

    invoke-direct/range {v21 .. v22}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;-><init>(Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$1;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 124
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v7, "concatedText":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 126
    .local v16, "rawBytesLen":I
    const/4 v4, 0x0

    .line 127
    .local v4, "byteSegmentLength":I
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/zxing/Result;

    .line 128
    .local v18, "saResult":Lcom/google/zxing/Result;
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int v16, v16, v21

    .line 130
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v21

    sget-object v22, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 132
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v21

    sget-object v22, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 134
    .local v6, "byteSegments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [B

    .line 135
    .local v20, "segment":[B
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    add-int v4, v4, v21

    .line 136
    goto :goto_2

    .line 139
    .end local v6    # "byteSegments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v18    # "saResult":Lcom/google/zxing/Result;
    .end local v20    # "segment":[B
    :cond_6
    move/from16 v0, v16

    new-array v12, v0, [B

    .line 140
    .local v12, "newRawBytes":[B
    new-array v11, v4, [B

    .line 141
    .local v11, "newByteSegment":[B
    const/4 v13, 0x0

    .line 142
    .local v13, "newRawBytesIndex":I
    const/4 v3, 0x0

    .line 143
    .local v3, "byteSegmentIndex":I
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/zxing/Result;

    .line 144
    .restart local v18    # "saResult":Lcom/google/zxing/Result;
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v12, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int v13, v13, v21

    .line 146
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v21

    sget-object v22, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 148
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v21

    sget-object v22, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 150
    .restart local v6    # "byteSegments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [B

    .line 151
    .restart local v20    # "segment":[B
    const/16 v21, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v11, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    add-int v3, v3, v21

    .line 153
    goto :goto_3

    .line 156
    .end local v6    # "byteSegments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v18    # "saResult":Lcom/google/zxing/Result;
    .end local v20    # "segment":[B
    :cond_8
    new-instance v14, Lcom/google/zxing/Result;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    sget-object v23, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v14, v0, v12, v1, v2}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 157
    .local v14, "newResult":Lcom/google/zxing/Result;
    if-lez v4, :cond_9

    .line 158
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v5, "byteSegmentList":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    invoke-interface {v5, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v21, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v21

    invoke-virtual {v14, v0, v5}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 162
    .end local v5    # "byteSegmentList":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    :cond_9
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 p0, v15

    .line 163
    goto/16 :goto_0
.end method


# virtual methods
.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;)[Lcom/google/zxing/Result;
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;
    .locals 15
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v11, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    new-instance v12, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->detectMulti(Ljava/util/Map;)[Lcom/google/zxing/common/DetectorResult;

    move-result-object v5

    .line 62
    .local v5, "detectorResults":[Lcom/google/zxing/common/DetectorResult;
    move-object v1, v5

    .local v1, "arr$":[Lcom/google/zxing/common/DetectorResult;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_4

    aget-object v4, v1, v7

    .line 64
    .local v4, "detectorResult":Lcom/google/zxing/common/DetectorResult;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->getDecoder()Lcom/google/zxing/qrcode/decoder/Decoder;

    move-result-object v12

    invoke-virtual {v4}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v3

    .line 65
    .local v3, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    invoke-virtual {v4}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v9

    .line 67
    .local v9, "points":[Lcom/google/zxing/ResultPoint;
    invoke-virtual {v3}, Lcom/google/zxing/common/DecoderResult;->getOther()Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    if-eqz v12, :cond_0

    .line 68
    invoke-virtual {v3}, Lcom/google/zxing/common/DecoderResult;->getOther()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    invoke-virtual {v12, v9}, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;->applyMirroredCorrection([Lcom/google/zxing/ResultPoint;)V

    .line 70
    :cond_0
    new-instance v10, Lcom/google/zxing/Result;

    invoke-virtual {v3}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v13

    sget-object v14, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v10, v12, v13, v9, v14}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 72
    .local v10, "result":Lcom/google/zxing/Result;
    invoke-virtual {v3}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object v2

    .line 73
    .local v2, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz v2, :cond_1

    .line 74
    sget-object v12, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v10, v12, v2}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 76
    :cond_1
    invoke-virtual {v3}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "ecLevel":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 78
    sget-object v12, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v10, v12, v6}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 80
    :cond_2
    invoke-virtual {v3}, Lcom/google/zxing/common/DecoderResult;->hasStructuredAppend()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 81
    sget-object v12, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v3}, Lcom/google/zxing/common/DecoderResult;->getStructuredAppendSequenceNumber()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 83
    sget-object v12, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_PARITY:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v3}, Lcom/google/zxing/common/DecoderResult;->getStructuredAppendParity()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 86
    :cond_3
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v2    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v3    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    .end local v6    # "ecLevel":Ljava/lang/String;
    .end local v9    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v10    # "result":Lcom/google/zxing/Result;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 91
    .end local v4    # "detectorResult":Lcom/google/zxing/common/DetectorResult;
    :cond_4
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 92
    sget-object v12, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;

    .line 95
    :goto_2
    return-object v12

    .line 94
    :cond_5
    invoke-static {v11}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->processStructuredAppend(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 95
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Lcom/google/zxing/Result;

    invoke-interface {v11, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/google/zxing/Result;

    goto :goto_2

    .line 87
    .restart local v4    # "detectorResult":Lcom/google/zxing/common/DetectorResult;
    :catch_0
    move-exception v12

    goto :goto_1
.end method
