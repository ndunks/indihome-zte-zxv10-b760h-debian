.class public final Lcom/google/zxing/oned/Code39Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code39Reader.java"


# static fields
.field private static final ALPHABET:[C

.field static final ALPHABET_STRING:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

.field private static final ASTERISK_ENCODING:I

.field static final CHARACTER_ENCODINGS:[I


# instance fields
.field private final counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;

.field private final extendedMode:Z

.field private final usingCheckDigit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code39Reader;->ALPHABET:[C

    .line 47
    const/16 v0, 0x2c

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    .line 55
    sget-object v0, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    const/16 v1, 0x27

    aget v0, v0, v1

    sput v0, Lcom/google/zxing/oned/Code39Reader;->ASTERISK_ENCODING:I

    return-void

    .line 47
    :array_0
    .array-data 4
        0x34
        0x121
        0x61
        0x160
        0x31
        0x130
        0x70
        0x25
        0x124
        0x64
        0x109
        0x49
        0x148
        0x19
        0x118
        0x58
        0xd
        0x10c
        0x4c
        0x1c
        0x103
        0x43
        0x142
        0x13
        0x112
        0x52
        0x7
        0x106
        0x46
        0x16
        0x181
        0xc1
        0x1c0
        0x91
        0x190
        0xd0
        0x85
        0x184
        0xc4
        0x94
        0xa8
        0xa2
        0x8a
        0x2a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/Code39Reader;-><init>(Z)V

    .line 68
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "usingCheckDigit"    # Z

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/zxing/oned/Code39Reader;-><init>(ZZ)V

    .line 79
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 2
    .param p1, "usingCheckDigit"    # Z
    .param p2, "extendedMode"    # Z

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 92
    iput-boolean p1, p0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    .line 93
    iput-boolean p2, p0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 95
    const/16 v0, 0x9

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/Code39Reader;->counters:[I

    .line 96
    return-void
.end method

.method private static decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 9
    .param p0, "encoded"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5a

    const/16 v7, 0x41

    .line 268
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 269
    .local v4, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 270
    .local v1, "decoded":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_8

    .line 271
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 272
    .local v0, "c":C
    const/16 v6, 0x2b

    if-eq v0, v6, :cond_0

    const/16 v6, 0x24

    if-eq v0, v6, :cond_0

    const/16 v6, 0x25

    if-eq v0, v6, :cond_0

    const/16 v6, 0x2f

    if-ne v0, v6, :cond_7

    .line 273
    :cond_0
    add-int/lit8 v6, v3, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 274
    .local v5, "next":C
    const/4 v2, 0x0

    .line 275
    .local v2, "decodedChar":C
    sparse-switch v0, :sswitch_data_0

    .line 313
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    add-int/lit8 v3, v3, 0x1

    .line 270
    .end local v2    # "decodedChar":C
    .end local v5    # "next":C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 278
    .restart local v2    # "decodedChar":C
    .restart local v5    # "next":C
    :sswitch_0
    if-lt v5, v7, :cond_1

    if-gt v5, v8, :cond_1

    .line 279
    add-int/lit8 v6, v5, 0x20

    int-to-char v2, v6

    goto :goto_1

    .line 281
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 286
    :sswitch_1
    if-lt v5, v7, :cond_2

    if-gt v5, v8, :cond_2

    .line 287
    add-int/lit8 v6, v5, -0x40

    int-to-char v2, v6

    goto :goto_1

    .line 289
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 294
    :sswitch_2
    if-lt v5, v7, :cond_3

    const/16 v6, 0x45

    if-gt v5, v6, :cond_3

    .line 295
    add-int/lit8 v6, v5, -0x26

    int-to-char v2, v6

    goto :goto_1

    .line 296
    :cond_3
    const/16 v6, 0x46

    if-lt v5, v6, :cond_4

    const/16 v6, 0x57

    if-gt v5, v6, :cond_4

    .line 297
    add-int/lit8 v6, v5, -0xb

    int-to-char v2, v6

    goto :goto_1

    .line 299
    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 304
    :sswitch_3
    if-lt v5, v7, :cond_5

    const/16 v6, 0x4f

    if-gt v5, v6, :cond_5

    .line 305
    add-int/lit8 v6, v5, -0x20

    int-to-char v2, v6

    goto :goto_1

    .line 306
    :cond_5
    if-ne v5, v8, :cond_6

    .line 307
    const/16 v2, 0x3a

    goto :goto_1

    .line 309
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 317
    .end local v2    # "decodedChar":C
    .end local v5    # "next":C
    :cond_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 320
    .end local v0    # "c":C
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 275
    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_1
        0x25 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method private static findAsteriskPattern(Lcom/google/zxing/common/BitArray;[I)[I
    .locals 12
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    .line 181
    .local v6, "width":I
    invoke-virtual {p0, v8}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v5

    .line 183
    .local v5, "rowOffset":I
    const/4 v0, 0x0

    .line 184
    .local v0, "counterPosition":I
    move v4, v5

    .line 185
    .local v4, "patternStart":I
    const/4 v2, 0x0

    .line 186
    .local v2, "isWhite":Z
    array-length v3, p1

    .line 188
    .local v3, "patternLength":I
    move v1, v5

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_4

    .line 189
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    xor-int/2addr v9, v2

    if-eqz v9, :cond_0

    .line 190
    aget v9, p1, v0

    add-int/lit8 v9, v9, 0x1

    aput v9, p1, v0

    .line 188
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_0
    add-int/lit8 v9, v3, -0x1

    if-ne v0, v9, :cond_2

    .line 194
    invoke-static {p1}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I

    move-result v9

    sget v10, Lcom/google/zxing/oned/Code39Reader;->ASTERISK_ENCODING:I

    if-ne v9, v10, :cond_1

    sub-int v9, v1, v4

    div-int/lit8 v9, v9, 0x2

    sub-int v9, v4, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {p0, v9, v4, v8}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 196
    new-array v9, v11, [I

    aput v4, v9, v8

    aput v1, v9, v7

    return-object v9

    .line 198
    :cond_1
    aget v9, p1, v8

    aget v10, p1, v7

    add-int/2addr v9, v10

    add-int/2addr v4, v9

    .line 199
    add-int/lit8 v9, v3, -0x2

    invoke-static {p1, v11, p1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    add-int/lit8 v9, v3, -0x2

    aput v8, p1, v9

    .line 201
    add-int/lit8 v9, v3, -0x1

    aput v8, p1, v9

    .line 202
    add-int/lit8 v0, v0, -0x1

    .line 206
    :goto_2
    aput v7, p1, v0

    .line 207
    if-nez v2, :cond_3

    move v2, v7

    :goto_3
    goto :goto_1

    .line 204
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v2, v8

    .line 207
    goto :goto_3

    .line 210
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7
.end method

.method private static patternToChar(I)C
    .locals 2
    .param p0, "pattern"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 260
    sget-object v1, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_0

    .line 261
    sget-object v1, Lcom/google/zxing/oned/Code39Reader;->ALPHABET:[C

    aget-char v1, v1, v0

    return v1

    .line 259
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private static toNarrowWidePattern([I)I
    .locals 15
    .param p0, "counters"    # [I

    .prologue
    const/4 v14, 0x3

    const/4 v11, -0x1

    .line 216
    array-length v7, p0

    .line 217
    .local v7, "numCounters":I
    const/4 v5, 0x0

    .line 220
    .local v5, "maxNarrowCounter":I
    :cond_0
    const v6, 0x7fffffff

    .line 221
    .local v6, "minCounter":I
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget v1, v0, v3

    .line 222
    .local v1, "counter":I
    if-ge v1, v6, :cond_1

    if-le v1, v5, :cond_1

    .line 223
    move v6, v1

    .line 221
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 226
    .end local v1    # "counter":I
    :cond_2
    move v5, v6

    .line 227
    const/4 v10, 0x0

    .line 228
    .local v10, "wideCounters":I
    const/4 v9, 0x0

    .line 229
    .local v9, "totalWideCountersWidth":I
    const/4 v8, 0x0

    .line 230
    .local v8, "pattern":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v7, :cond_4

    .line 231
    aget v1, p0, v2

    .line 232
    .restart local v1    # "counter":I
    if-le v1, v5, :cond_3

    .line 233
    const/4 v12, 0x1

    add-int/lit8 v13, v7, -0x1

    sub-int/2addr v13, v2

    shl-int/2addr v12, v13

    or-int/2addr v8, v12

    .line 234
    add-int/lit8 v10, v10, 0x1

    .line 235
    add-int/2addr v9, v1

    .line 230
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 238
    .end local v1    # "counter":I
    :cond_4
    if-ne v10, v14, :cond_7

    .line 242
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v7, :cond_5

    if-lez v10, :cond_5

    .line 243
    aget v1, p0, v2

    .line 244
    .restart local v1    # "counter":I
    if-le v1, v5, :cond_6

    .line 245
    add-int/lit8 v10, v10, -0x1

    .line 247
    mul-int/lit8 v12, v1, 0x2

    if-lt v12, v9, :cond_6

    move v8, v11

    .line 255
    .end local v1    # "counter":I
    .end local v8    # "pattern":I
    :cond_5
    :goto_3
    return v8

    .line 242
    .restart local v1    # "counter":I
    .restart local v8    # "pattern":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 254
    .end local v1    # "counter":I
    :cond_7
    if-gt v10, v14, :cond_0

    move v8, v11

    .line 255
    goto :goto_3
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 31
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
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
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 102
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/Code39Reader;->counters:[I

    move-object/from16 v22, v0

    .line 103
    .local v22, "theCounters":[I
    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    .line 105
    .local v18, "result":Ljava/lang/StringBuilder;
    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 107
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/zxing/oned/Code39Reader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;[I)[I

    move-result-object v21

    .line 109
    .local v21, "start":[I
    const/16 v25, 0x1

    aget v25, v21, v25

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v16

    .line 110
    .local v16, "nextStart":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v8

    .line 115
    .local v8, "end":I
    :cond_0
    move-object/from16 v0, p2

    move/from16 v1, v16

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/zxing/oned/Code39Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 116
    invoke-static/range {v22 .. v22}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I

    move-result v17

    .line 117
    .local v17, "pattern":I
    if-gez v17, :cond_1

    .line 118
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v25

    throw v25

    .line 120
    :cond_1
    invoke-static/range {v17 .. v17}, Lcom/google/zxing/oned/Code39Reader;->patternToChar(I)C

    move-result v7

    .line 121
    .local v7, "decodedChar":C
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    move/from16 v12, v16

    .line 123
    .local v12, "lastStart":I
    move-object/from16 v5, v22

    .local v5, "arr$":[I
    array-length v14, v5

    .local v14, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v14, :cond_2

    aget v6, v5, v10

    .line 124
    .local v6, "counter":I
    add-int v16, v16, v6

    .line 123
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 127
    .end local v6    # "counter":I
    :cond_2
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v16

    .line 128
    const/16 v25, 0x2a

    move/from16 v0, v25

    if-ne v7, v0, :cond_0

    .line 129
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 132
    const/4 v11, 0x0

    .line 133
    .local v11, "lastPatternSize":I
    move-object/from16 v5, v22

    array-length v14, v5

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v14, :cond_3

    aget v6, v5, v10

    .line 134
    .restart local v6    # "counter":I
    add-int/2addr v11, v6

    .line 133
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 136
    .end local v6    # "counter":I
    :cond_3
    sub-int v25, v16, v12

    sub-int v24, v25, v11

    .line 139
    .local v24, "whiteSpaceAfterEnd":I
    move/from16 v0, v16

    if-eq v0, v8, :cond_4

    mul-int/lit8 v25, v24, 0x2

    move/from16 v0, v25

    if-ge v0, v11, :cond_4

    .line 140
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v25

    throw v25

    .line 143
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    move/from16 v25, v0

    if-eqz v25, :cond_7

    .line 144
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    add-int/lit8 v15, v25, -0x1

    .line 145
    .local v15, "max":I
    const/16 v23, 0x0

    .line 146
    .local v23, "total":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v15, :cond_5

    .line 147
    const-string v25, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->indexOf(I)I

    move-result v25

    add-int v23, v23, v25

    .line 146
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 149
    :cond_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v25

    sget-object v26, Lcom/google/zxing/oned/Code39Reader;->ALPHABET:[C

    rem-int/lit8 v27, v23, 0x2b

    aget-char v26, v26, v27

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_6

    .line 150
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v25

    throw v25

    .line 152
    :cond_6
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 155
    .end local v9    # "i":I
    .end local v15    # "max":I
    .end local v23    # "total":I
    :cond_7
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-nez v25, :cond_8

    .line 157
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v25

    throw v25

    .line 161
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    move/from16 v25, v0

    if-eqz v25, :cond_9

    .line 162
    invoke-static/range {v18 .. v18}, Lcom/google/zxing/oned/Code39Reader;->decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    .line 167
    .local v19, "resultString":Ljava/lang/String;
    :goto_3
    const/16 v25, 0x1

    aget v25, v21, v25

    const/16 v26, 0x0

    aget v26, v21, v26

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    div-float v13, v25, v26

    .line 168
    .local v13, "left":F
    int-to-float v0, v12

    move/from16 v25, v0

    int-to-float v0, v11

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    add-float v20, v25, v26

    .line 169
    .local v20, "right":F
    new-instance v25, Lcom/google/zxing/Result;

    const/16 v26, 0x0

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    new-instance v29, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v0, v13, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v29, v27, v28

    const/16 v28, 0x1

    new-instance v29, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v29

    move/from16 v1, v20

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v29, v27, v28

    sget-object v28, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v25

    .line 164
    .end local v13    # "left":F
    .end local v19    # "resultString":Ljava/lang/String;
    .end local v20    # "right":F
    :cond_9
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "resultString":Ljava/lang/String;
    goto :goto_3
.end method
