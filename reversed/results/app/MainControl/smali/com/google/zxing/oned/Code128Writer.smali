.class public final Lcom/google/zxing/oned/Code128Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code128Writer.java"


# static fields
.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_FNC_1:I = 0x66

.field private static final CODE_FNC_2:I = 0x61

.field private static final CODE_FNC_3:I = 0x60

.field private static final CODE_FNC_4_B:I = 0x64

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a

.field private static final ESCAPE_FNC_1:C = '\u00f1'

.field private static final ESCAPE_FNC_2:C = '\u00f2'

.field private static final ESCAPE_FNC_3:C = '\u00f3'

.field private static final ESCAPE_FNC_4:C = '\u00f4'


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static isDigits(Ljava/lang/CharSequence;II)Z
    .locals 6
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v4, 0x0

    .line 186
    add-int v1, p1, p2

    .line 187
    .local v1, "end":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 188
    .local v3, "last":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    if-ge v2, v3, :cond_4

    .line 189
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 190
    .local v0, "c":C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_0

    const/16 v5, 0x39

    if-le v0, v5, :cond_3

    .line 191
    :cond_0
    const/16 v5, 0xf1

    if-eq v0, v5, :cond_2

    .line 197
    .end local v0    # "c":C
    :cond_1
    :goto_1
    return v4

    .line 194
    .restart local v0    # "c":C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 188
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "c":C
    :cond_4
    if-gt v1, v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 58
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can only encode CODE_128, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 26
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    .line 68
    .local v13, "length":I
    const/16 v23, 0x1

    move/from16 v0, v23

    if-lt v13, v0, :cond_0

    const/16 v23, 0x50

    move/from16 v0, v23

    if-le v13, v0, :cond_1

    .line 69
    :cond_0
    new-instance v23, Ljava/lang/IllegalArgumentException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Contents length should be between 1 and 80 characters, but got "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 73
    :cond_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v13, :cond_4

    .line 74
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 75
    .local v4, "c":C
    const/16 v23, 0x20

    move/from16 v0, v23

    if-lt v4, v0, :cond_2

    const/16 v23, 0x7e

    move/from16 v0, v23

    if-le v4, v0, :cond_3

    .line 76
    :cond_2
    packed-switch v4, :pswitch_data_0

    .line 83
    new-instance v23, Ljava/lang/IllegalArgumentException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Bad character in input: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 73
    :cond_3
    :pswitch_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 88
    .end local v4    # "c":C
    :cond_4
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v17, "patterns":Ljava/util/Collection;, "Ljava/util/Collection<[I>;"
    const/4 v5, 0x0

    .line 90
    .local v5, "checkSum":I
    const/4 v6, 0x1

    .line 91
    .local v6, "checkWeight":I
    const/4 v7, 0x0

    .line 92
    .local v7, "codeSet":I
    const/16 v19, 0x0

    .line 94
    .local v19, "position":I
    :cond_5
    :goto_1
    move/from16 v0, v19

    if-ge v0, v13, :cond_c

    .line 96
    const/16 v23, 0x63

    move/from16 v0, v23

    if-ne v7, v0, :cond_6

    const/16 v20, 0x2

    .line 98
    .local v20, "requiredDigitCount":I
    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/zxing/oned/Code128Writer;->isDigits(Ljava/lang/CharSequence;II)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 99
    const/16 v14, 0x63

    .line 106
    .local v14, "newCodeSet":I
    :goto_3
    if-ne v14, v7, :cond_9

    .line 109
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    packed-switch v23, :pswitch_data_1

    .line 124
    const/16 v23, 0x64

    move/from16 v0, v23

    if-ne v7, v0, :cond_8

    .line 125
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    add-int/lit8 v16, v23, -0x20

    .line 131
    .local v16, "patternIndex":I
    :goto_4
    add-int/lit8 v19, v19, 0x1

    .line 151
    :goto_5
    sget-object v23, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v23, v23, v16

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 154
    mul-int v23, v16, v6

    add-int v5, v5, v23

    .line 155
    if-eqz v19, :cond_5

    .line 156
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 96
    .end local v14    # "newCodeSet":I
    .end local v16    # "patternIndex":I
    .end local v20    # "requiredDigitCount":I
    :cond_6
    const/16 v20, 0x4

    goto :goto_2

    .line 101
    .restart local v20    # "requiredDigitCount":I
    :cond_7
    const/16 v14, 0x64

    .restart local v14    # "newCodeSet":I
    goto :goto_3

    .line 111
    :pswitch_1
    const/16 v16, 0x66

    .line 112
    .restart local v16    # "patternIndex":I
    goto :goto_4

    .line 114
    .end local v16    # "patternIndex":I
    :pswitch_2
    const/16 v16, 0x61

    .line 115
    .restart local v16    # "patternIndex":I
    goto :goto_4

    .line 117
    .end local v16    # "patternIndex":I
    :pswitch_3
    const/16 v16, 0x60

    .line 118
    .restart local v16    # "patternIndex":I
    goto :goto_4

    .line 120
    .end local v16    # "patternIndex":I
    :pswitch_4
    const/16 v16, 0x64

    .line 121
    .restart local v16    # "patternIndex":I
    goto :goto_4

    .line 127
    .end local v16    # "patternIndex":I
    :cond_8
    add-int/lit8 v23, v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 128
    .restart local v16    # "patternIndex":I
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 135
    .end local v16    # "patternIndex":I
    :cond_9
    if-nez v7, :cond_b

    .line 137
    const/16 v23, 0x64

    move/from16 v0, v23

    if-ne v14, v0, :cond_a

    .line 138
    const/16 v16, 0x68

    .line 147
    .restart local v16    # "patternIndex":I
    :goto_6
    move v7, v14

    goto :goto_5

    .line 141
    .end local v16    # "patternIndex":I
    :cond_a
    const/16 v16, 0x69

    .restart local v16    # "patternIndex":I
    goto :goto_6

    .line 145
    .end local v16    # "patternIndex":I
    :cond_b
    move/from16 v16, v14

    .restart local v16    # "patternIndex":I
    goto :goto_6

    .line 161
    .end local v14    # "newCodeSet":I
    .end local v16    # "patternIndex":I
    .end local v20    # "requiredDigitCount":I
    :cond_c
    rem-int/lit8 v5, v5, 0x67

    .line 162
    sget-object v23, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v23, v23, v5

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v23, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    const/16 v24, 0x6a

    aget-object v23, v23, v24

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 168
    const/4 v8, 0x0

    .line 169
    .local v8, "codeWidth":I
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [I

    .line 170
    .local v15, "pattern":[I
    move-object v3, v15

    .local v3, "arr$":[I
    array-length v12, v3

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_7
    if-ge v11, v12, :cond_d

    aget v22, v3, v11

    .line 171
    .local v22, "width":I
    add-int v8, v8, v22

    .line 170
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 176
    .end local v3    # "arr$":[I
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v15    # "pattern":[I
    .end local v22    # "width":I
    :cond_e
    new-array v0, v8, [Z

    move-object/from16 v21, v0

    .line 177
    .local v21, "result":[Z
    const/16 v18, 0x0

    .line 178
    .local v18, "pos":I
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [I

    .line 179
    .restart local v15    # "pattern":[I
    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v23

    invoke-static {v0, v1, v15, v2}, Lcom/google/zxing/oned/Code128Writer;->appendPattern([ZI[IZ)I

    move-result v23

    add-int v18, v18, v23

    .line 180
    goto :goto_8

    .line 182
    .end local v15    # "pattern":[I
    :cond_f
    return-object v21

    .line 76
    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 109
    :pswitch_data_1
    .packed-switch 0xf1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
