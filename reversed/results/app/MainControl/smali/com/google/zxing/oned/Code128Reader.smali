.class public final Lcom/google/zxing/oned/Code128Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code128Reader.java"


# static fields
.field private static final CODE_CODE_A:I = 0x65

.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_FNC_1:I = 0x66

.field private static final CODE_FNC_2:I = 0x61

.field private static final CODE_FNC_3:I = 0x60

.field private static final CODE_FNC_4_A:I = 0x65

.field private static final CODE_FNC_4_B:I = 0x64

.field static final CODE_PATTERNS:[[I

.field private static final CODE_SHIFT:I = 0x62

.field private static final CODE_START_A:I = 0x67

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a

.field private static final MAX_AVG_VARIANCE:F = 0.25f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.7f


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x6

    .line 39
    const/16 v0, 0x6b

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [I

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [I

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [I

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [I

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [I

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [I

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [I

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [I

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [I

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [I

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v3, [I

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v3, [I

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v3, [I

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v3, [I

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v3, [I

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v3, [I

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v3, [I

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v3, [I

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v3, [I

    fill-array-data v2, :array_33

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v3, [I

    fill-array-data v2, :array_34

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v3, [I

    fill-array-data v2, :array_35

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v3, [I

    fill-array-data v2, :array_36

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v3, [I

    fill-array-data v2, :array_37

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v3, [I

    fill-array-data v2, :array_38

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v3, [I

    fill-array-data v2, :array_39

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v3, [I

    fill-array-data v2, :array_3a

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v3, [I

    fill-array-data v2, :array_3b

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v3, [I

    fill-array-data v2, :array_3c

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v3, [I

    fill-array-data v2, :array_3d

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v3, [I

    fill-array-data v2, :array_3e

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v3, [I

    fill-array-data v2, :array_3f

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v3, [I

    fill-array-data v2, :array_40

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v3, [I

    fill-array-data v2, :array_41

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v3, [I

    fill-array-data v2, :array_42

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v3, [I

    fill-array-data v2, :array_43

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v3, [I

    fill-array-data v2, :array_44

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v3, [I

    fill-array-data v2, :array_45

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v3, [I

    fill-array-data v2, :array_46

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v3, [I

    fill-array-data v2, :array_47

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v3, [I

    fill-array-data v2, :array_48

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v3, [I

    fill-array-data v2, :array_49

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v3, [I

    fill-array-data v2, :array_4a

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v3, [I

    fill-array-data v2, :array_4b

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v3, [I

    fill-array-data v2, :array_4c

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v3, [I

    fill-array-data v2, :array_4d

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v3, [I

    fill-array-data v2, :array_4e

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v3, [I

    fill-array-data v2, :array_4f

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v3, [I

    fill-array-data v2, :array_50

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v3, [I

    fill-array-data v2, :array_51

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v3, [I

    fill-array-data v2, :array_52

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v3, [I

    fill-array-data v2, :array_53

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v3, [I

    fill-array-data v2, :array_54

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v3, [I

    fill-array-data v2, :array_55

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v3, [I

    fill-array-data v2, :array_56

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v3, [I

    fill-array-data v2, :array_57

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v3, [I

    fill-array-data v2, :array_58

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v3, [I

    fill-array-data v2, :array_59

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v3, [I

    fill-array-data v2, :array_5a

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v3, [I

    fill-array-data v2, :array_5b

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v3, [I

    fill-array-data v2, :array_5c

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v3, [I

    fill-array-data v2, :array_5d

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v3, [I

    fill-array-data v2, :array_5e

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v3, [I

    fill-array-data v2, :array_5f

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v3, [I

    fill-array-data v2, :array_60

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v3, [I

    fill-array-data v2, :array_61

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v3, [I

    fill-array-data v2, :array_62

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v3, [I

    fill-array-data v2, :array_63

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v3, [I

    fill-array-data v2, :array_64

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v3, [I

    fill-array-data v2, :array_65

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v3, [I

    fill-array-data v2, :array_66

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v3, [I

    fill-array-data v2, :array_67

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v3, [I

    fill-array-data v2, :array_68

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v3, [I

    fill-array-data v2, :array_69

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v4, [I

    fill-array-data v2, :array_6a

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x2
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x2
        0x1
        0x3
        0x2
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x3
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x1
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x2
        0x2
        0x3
        0x1
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x3
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x2
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x3
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_c
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x3
        0x2
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x3
        0x2
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x3
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x1
        0x1
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x2
        0x3
        0x1
        0x2
        0x2
    .end array-data

    :array_11
    .array-data 4
        0x1
        0x2
        0x3
        0x2
        0x2
        0x1
    .end array-data

    :array_12
    .array-data 4
        0x2
        0x2
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_13
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_14
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x2
        0x1
        0x3
        0x2
        0x1
        0x2
    .end array-data

    :array_16
    .array-data 4
        0x2
        0x2
        0x3
        0x1
        0x1
        0x2
    .end array-data

    :array_17
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x3
        0x1
    .end array-data

    :array_18
    .array-data 4
        0x3
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_19
    .array-data 4
        0x3
        0x2
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1a
    .array-data 4
        0x3
        0x2
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_1b
    .array-data 4
        0x3
        0x1
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_1c
    .array-data 4
        0x3
        0x2
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_1d
    .array-data 4
        0x3
        0x2
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_1e
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x2
        0x3
    .end array-data

    :array_1f
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x2
        0x1
    .end array-data

    :array_20
    .array-data 4
        0x2
        0x3
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_21
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x2
        0x3
    .end array-data

    :array_22
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_23
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x2
        0x1
    .end array-data

    :array_24
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x1
        0x3
    .end array-data

    :array_25
    .array-data 4
        0x1
        0x3
        0x2
        0x1
        0x1
        0x3
    .end array-data

    :array_26
    .array-data 4
        0x1
        0x3
        0x2
        0x3
        0x1
        0x1
    .end array-data

    :array_27
    .array-data 4
        0x2
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_28
    .array-data 4
        0x2
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_29
    .array-data 4
        0x2
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_2a
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x3
        0x3
    .end array-data

    :array_2b
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x3
        0x1
    .end array-data

    :array_2c
    .array-data 4
        0x1
        0x3
        0x2
        0x1
        0x3
        0x1
    .end array-data

    :array_2d
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x2
        0x3
    .end array-data

    :array_2e
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x2
        0x1
    .end array-data

    :array_2f
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x2
        0x1
    .end array-data

    :array_30
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x2
        0x1
    .end array-data

    :array_31
    .array-data 4
        0x2
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_32
    .array-data 4
        0x2
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_33
    .array-data 4
        0x2
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_34
    .array-data 4
        0x2
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_35
    .array-data 4
        0x2
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data

    :array_36
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_37
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x2
        0x1
    .end array-data

    :array_38
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x2
        0x1
    .end array-data

    :array_39
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x1
        0x3
    .end array-data

    :array_3a
    .array-data 4
        0x3
        0x1
        0x2
        0x3
        0x1
        0x1
    .end array-data

    :array_3b
    .array-data 4
        0x3
        0x3
        0x2
        0x1
        0x1
        0x1
    .end array-data

    :array_3c
    .array-data 4
        0x3
        0x1
        0x4
        0x1
        0x1
        0x1
    .end array-data

    :array_3d
    .array-data 4
        0x2
        0x2
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_3e
    .array-data 4
        0x4
        0x3
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_3f
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x2
        0x4
    .end array-data

    :array_40
    .array-data 4
        0x1
        0x1
        0x1
        0x4
        0x2
        0x2
    .end array-data

    :array_41
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x2
        0x4
    .end array-data

    :array_42
    .array-data 4
        0x1
        0x2
        0x1
        0x4
        0x2
        0x1
    .end array-data

    :array_43
    .array-data 4
        0x1
        0x4
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_44
    .array-data 4
        0x1
        0x4
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_45
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x1
        0x4
    .end array-data

    :array_46
    .array-data 4
        0x1
        0x1
        0x2
        0x4
        0x1
        0x2
    .end array-data

    :array_47
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x1
        0x4
    .end array-data

    :array_48
    .array-data 4
        0x1
        0x2
        0x2
        0x4
        0x1
        0x1
    .end array-data

    :array_49
    .array-data 4
        0x1
        0x4
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_4a
    .array-data 4
        0x1
        0x4
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_4b
    .array-data 4
        0x2
        0x4
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_4c
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_4d
    .array-data 4
        0x4
        0x1
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_4e
    .array-data 4
        0x2
        0x4
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_4f
    .array-data 4
        0x1
        0x3
        0x4
        0x1
        0x1
        0x1
    .end array-data

    :array_50
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x4
        0x2
    .end array-data

    :array_51
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x4
        0x2
    .end array-data

    :array_52
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x4
        0x1
    .end array-data

    :array_53
    .array-data 4
        0x1
        0x1
        0x4
        0x2
        0x1
        0x2
    .end array-data

    :array_54
    .array-data 4
        0x1
        0x2
        0x4
        0x1
        0x1
        0x2
    .end array-data

    :array_55
    .array-data 4
        0x1
        0x2
        0x4
        0x2
        0x1
        0x1
    .end array-data

    :array_56
    .array-data 4
        0x4
        0x1
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_57
    .array-data 4
        0x4
        0x2
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_58
    .array-data 4
        0x4
        0x2
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_59
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x4
        0x1
    .end array-data

    :array_5a
    .array-data 4
        0x2
        0x1
        0x4
        0x1
        0x2
        0x1
    .end array-data

    :array_5b
    .array-data 4
        0x4
        0x1
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_5c
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x3
    .end array-data

    :array_5d
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x4
        0x1
    .end array-data

    :array_5e
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x4
        0x1
    .end array-data

    :array_5f
    .array-data 4
        0x1
        0x1
        0x4
        0x1
        0x1
        0x3
    .end array-data

    :array_60
    .array-data 4
        0x1
        0x1
        0x4
        0x3
        0x1
        0x1
    .end array-data

    :array_61
    .array-data 4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_62
    .array-data 4
        0x4
        0x1
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_63
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x4
        0x1
    .end array-data

    :array_64
    .array-data 4
        0x1
        0x1
        0x4
        0x1
        0x3
        0x1
    .end array-data

    :array_65
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x4
        0x1
    .end array-data

    :array_66
    .array-data 4
        0x4
        0x1
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_67
    .array-data 4
        0x2
        0x1
        0x1
        0x4
        0x1
        0x2
    .end array-data

    :array_68
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x4
    .end array-data

    :array_69
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x3
        0x2
    .end array-data

    :array_6a
    .array-data 4
        0x2
        0x3
        0x3
        0x1
        0x1
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    return-void
.end method

.method private static decodeCode(Lcom/google/zxing/common/BitArray;[II)I
    .locals 6
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "counters"    # [I
    .param p2, "rowOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {p0, p2, p1}, Lcom/google/zxing/oned/Code128Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 217
    const/high16 v1, 0x3e800000    # 0.25f

    .line 218
    .local v1, "bestVariance":F
    const/4 v0, -0x1

    .line 219
    .local v0, "bestMatch":I
    const/4 v2, 0x0

    .local v2, "d":I
    :goto_0
    sget-object v5, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 220
    sget-object v5, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v3, v5, v2

    .line 221
    .local v3, "pattern":[I
    const v5, 0x3f333333    # 0.7f

    invoke-static {p1, v3, v5}, Lcom/google/zxing/oned/Code128Reader;->patternMatchVariance([I[IF)F

    move-result v4

    .line 222
    .local v4, "variance":F
    cmpg-float v5, v4, v1

    if-gez v5, :cond_0

    .line 223
    move v1, v4

    .line 224
    move v0, v2

    .line 219
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v3    # "pattern":[I
    .end local v4    # "variance":F
    :cond_1
    if-ltz v0, :cond_2

    .line 229
    return v0

    .line 231
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5
.end method

.method private static findStartPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 15
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v11

    .line 171
    .local v11, "width":I
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v8

    .line 173
    .local v8, "rowOffset":I
    const/4 v2, 0x0

    .line 174
    .local v2, "counterPosition":I
    const/4 v12, 0x6

    new-array v3, v12, [I

    .line 175
    .local v3, "counters":[I
    move v7, v8

    .line 176
    .local v7, "patternStart":I
    const/4 v5, 0x0

    .line 177
    .local v5, "isWhite":Z
    array-length v6, v3

    .line 179
    .local v6, "patternLength":I
    move v4, v8

    .local v4, "i":I
    :goto_0
    if-ge v4, v11, :cond_6

    .line 180
    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v12

    xor-int/2addr v12, v5

    if-eqz v12, :cond_0

    .line 181
    aget v12, v3, v2

    add-int/lit8 v12, v12, 0x1

    aput v12, v3, v2

    .line 179
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 183
    :cond_0
    add-int/lit8 v12, v6, -0x1

    if-ne v2, v12, :cond_4

    .line 184
    const/high16 v1, 0x3e800000    # 0.25f

    .line 185
    .local v1, "bestVariance":F
    const/4 v0, -0x1

    .line 186
    .local v0, "bestMatch":I
    const/16 v9, 0x67

    .local v9, "startCode":I
    :goto_2
    const/16 v12, 0x69

    if-gt v9, v12, :cond_2

    .line 187
    sget-object v12, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v12, v12, v9

    const v13, 0x3f333333    # 0.7f

    invoke-static {v3, v12, v13}, Lcom/google/zxing/oned/Code128Reader;->patternMatchVariance([I[IF)F

    move-result v10

    .line 189
    .local v10, "variance":F
    cmpg-float v12, v10, v1

    if-gez v12, :cond_1

    .line 190
    move v1, v10

    .line 191
    move v0, v9

    .line 186
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 195
    .end local v10    # "variance":F
    :cond_2
    if-ltz v0, :cond_3

    const/4 v12, 0x0

    sub-int v13, v4, v7

    div-int/lit8 v13, v13, 0x2

    sub-int v13, v7, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v7, v13}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 197
    const/4 v12, 0x3

    new-array v12, v12, [I

    const/4 v13, 0x0

    aput v7, v12, v13

    const/4 v13, 0x1

    aput v4, v12, v13

    const/4 v13, 0x2

    aput v0, v12, v13

    return-object v12

    .line 199
    :cond_3
    const/4 v12, 0x0

    aget v12, v3, v12

    const/4 v13, 0x1

    aget v13, v3, v13

    add-int/2addr v12, v13

    add-int/2addr v7, v12

    .line 200
    const/4 v12, 0x2

    const/4 v13, 0x0

    add-int/lit8 v14, v6, -0x2

    invoke-static {v3, v12, v3, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    add-int/lit8 v12, v6, -0x2

    const/4 v13, 0x0

    aput v13, v3, v12

    .line 202
    add-int/lit8 v12, v6, -0x1

    const/4 v13, 0x0

    aput v13, v3, v12

    .line 203
    add-int/lit8 v2, v2, -0x1

    .line 207
    .end local v0    # "bestMatch":I
    .end local v1    # "bestVariance":F
    .end local v9    # "startCode":I
    :goto_3
    const/4 v12, 0x1

    aput v12, v3, v2

    .line 208
    if-nez v5, :cond_5

    const/4 v5, 0x1

    :goto_4
    goto :goto_1

    .line 205
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 208
    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    .line 211
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v12

    throw v12
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 41
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
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 239
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-eqz p3, :cond_0

    sget-object v35, Lcom/google/zxing/DecodeHintType;->ASSUME_GS1:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_0

    const/4 v9, 0x1

    .line 241
    .local v9, "convertFNC1":Z
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/google/zxing/oned/Code128Reader;->findStartPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v32

    .line 242
    .local v32, "startPatternInfo":[I
    const/16 v35, 0x2

    aget v31, v32, v35

    .line 244
    .local v31, "startCode":I
    new-instance v25, Ljava/util/ArrayList;

    const/16 v35, 0x14

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    .local v25, "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    move/from16 v0, v31

    int-to-byte v0, v0

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v35

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    packed-switch v31, :pswitch_data_0

    .line 259
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v35

    throw v35

    .line 239
    .end local v9    # "convertFNC1":Z
    .end local v25    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v31    # "startCode":I
    .end local v32    # "startPatternInfo":[I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 250
    .restart local v9    # "convertFNC1":Z
    .restart local v25    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .restart local v31    # "startCode":I
    .restart local v32    # "startPatternInfo":[I
    :pswitch_0
    const/16 v8, 0x65

    .line 262
    .local v8, "codeSet":I
    :goto_1
    const/4 v12, 0x0

    .line 263
    .local v12, "done":Z
    const/4 v15, 0x0

    .line 265
    .local v15, "isNextShifted":Z
    new-instance v27, Ljava/lang/StringBuilder;

    const/16 v35, 0x14

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 267
    .local v27, "result":Ljava/lang/StringBuilder;
    const/16 v35, 0x0

    aget v19, v32, v35

    .line 268
    .local v19, "lastStart":I
    const/16 v35, 0x1

    aget v23, v32, v35

    .line 269
    .local v23, "nextStart":I
    const/16 v35, 0x6

    move/from16 v0, v35

    new-array v11, v0, [I

    .line 271
    .local v11, "counters":[I
    const/16 v17, 0x0

    .line 272
    .local v17, "lastCode":I
    const/4 v7, 0x0

    .line 273
    .local v7, "code":I
    move/from16 v6, v31

    .line 274
    .local v6, "checksumTotal":I
    const/16 v22, 0x0

    .line 275
    .local v22, "multiplier":I
    const/16 v16, 0x1

    .line 276
    .local v16, "lastCharacterWasPrintable":Z
    const/16 v34, 0x0

    .line 277
    .local v34, "upperMode":Z
    const/16 v30, 0x0

    .line 279
    .local v30, "shiftUpperMode":Z
    :cond_1
    :goto_2
    if-nez v12, :cond_19

    .line 281
    move/from16 v33, v15

    .line 282
    .local v33, "unshift":Z
    const/4 v15, 0x0

    .line 285
    move/from16 v17, v7

    .line 288
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v11, v1}, Lcom/google/zxing/oned/Code128Reader;->decodeCode(Lcom/google/zxing/common/BitArray;[II)I

    move-result v7

    .line 290
    int-to-byte v0, v7

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v35

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    const/16 v35, 0x6a

    move/from16 v0, v35

    if-eq v7, v0, :cond_2

    .line 294
    const/16 v16, 0x1

    .line 298
    :cond_2
    const/16 v35, 0x6a

    move/from16 v0, v35

    if-eq v7, v0, :cond_3

    .line 299
    add-int/lit8 v22, v22, 0x1

    .line 300
    mul-int v35, v22, v7

    add-int v6, v6, v35

    .line 304
    :cond_3
    move/from16 v19, v23

    .line 305
    move-object v5, v11

    .local v5, "arr$":[I
    array-length v0, v5

    move/from16 v21, v0

    .local v21, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_3
    move/from16 v0, v21

    if-ge v14, v0, :cond_4

    aget v10, v5, v14

    .line 306
    .local v10, "counter":I
    add-int v23, v23, v10

    .line 305
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 253
    .end local v5    # "arr$":[I
    .end local v6    # "checksumTotal":I
    .end local v7    # "code":I
    .end local v8    # "codeSet":I
    .end local v10    # "counter":I
    .end local v11    # "counters":[I
    .end local v12    # "done":Z
    .end local v14    # "i$":I
    .end local v15    # "isNextShifted":Z
    .end local v16    # "lastCharacterWasPrintable":Z
    .end local v17    # "lastCode":I
    .end local v19    # "lastStart":I
    .end local v21    # "len$":I
    .end local v22    # "multiplier":I
    .end local v23    # "nextStart":I
    .end local v27    # "result":Ljava/lang/StringBuilder;
    .end local v30    # "shiftUpperMode":Z
    .end local v33    # "unshift":Z
    .end local v34    # "upperMode":Z
    :pswitch_1
    const/16 v8, 0x64

    .line 254
    .restart local v8    # "codeSet":I
    goto :goto_1

    .line 256
    .end local v8    # "codeSet":I
    :pswitch_2
    const/16 v8, 0x63

    .line 257
    .restart local v8    # "codeSet":I
    goto :goto_1

    .line 310
    .restart local v5    # "arr$":[I
    .restart local v6    # "checksumTotal":I
    .restart local v7    # "code":I
    .restart local v11    # "counters":[I
    .restart local v12    # "done":Z
    .restart local v14    # "i$":I
    .restart local v15    # "isNextShifted":Z
    .restart local v16    # "lastCharacterWasPrintable":Z
    .restart local v17    # "lastCode":I
    .restart local v19    # "lastStart":I
    .restart local v21    # "len$":I
    .restart local v22    # "multiplier":I
    .restart local v23    # "nextStart":I
    .restart local v27    # "result":Ljava/lang/StringBuilder;
    .restart local v30    # "shiftUpperMode":Z
    .restart local v33    # "unshift":Z
    .restart local v34    # "upperMode":Z
    :cond_4
    packed-switch v7, :pswitch_data_1

    .line 317
    packed-switch v8, :pswitch_data_2

    .line 478
    :cond_5
    :goto_4
    :pswitch_3
    if-eqz v33, :cond_1

    .line 479
    const/16 v35, 0x65

    move/from16 v0, v35

    if-ne v8, v0, :cond_18

    const/16 v8, 0x64

    :goto_5
    goto :goto_2

    .line 314
    :pswitch_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v35

    throw v35

    .line 320
    :pswitch_5
    const/16 v35, 0x40

    move/from16 v0, v35

    if-ge v7, v0, :cond_7

    .line 321
    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_6

    .line 322
    add-int/lit8 v35, v7, 0x20

    move/from16 v0, v35

    int-to-char v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    :goto_6
    const/16 v30, 0x0

    goto :goto_4

    .line 324
    :cond_6
    add-int/lit8 v35, v7, 0x20

    move/from16 v0, v35

    add-int/lit16 v0, v0, 0x80

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-char v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 327
    :cond_7
    const/16 v35, 0x60

    move/from16 v0, v35

    if-ge v7, v0, :cond_9

    .line 328
    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_8

    .line 329
    add-int/lit8 v35, v7, -0x40

    move/from16 v0, v35

    int-to-char v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    :goto_7
    const/16 v30, 0x0

    goto :goto_4

    .line 331
    :cond_8
    add-int/lit8 v35, v7, 0x40

    move/from16 v0, v35

    int-to-char v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 337
    :cond_9
    const/16 v35, 0x6a

    move/from16 v0, v35

    if-eq v7, v0, :cond_a

    .line 338
    const/16 v16, 0x0

    .line 340
    :cond_a
    packed-switch v7, :pswitch_data_3

    :pswitch_6
    goto :goto_4

    .line 369
    :pswitch_7
    const/4 v15, 0x1

    .line 370
    const/16 v8, 0x64

    .line 371
    goto :goto_4

    .line 342
    :pswitch_8
    if-eqz v9, :cond_5

    .line 343
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v35

    if-nez v35, :cond_b

    .line 346
    const-string v35, "]C1"

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 349
    :cond_b
    const/16 v35, 0x1d

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 358
    :pswitch_9
    if-nez v34, :cond_c

    if-eqz v30, :cond_c

    .line 359
    const/16 v34, 0x1

    .line 360
    const/16 v30, 0x0

    goto/16 :goto_4

    .line 361
    :cond_c
    if-eqz v34, :cond_d

    if-eqz v30, :cond_d

    .line 362
    const/16 v34, 0x0

    .line 363
    const/16 v30, 0x0

    goto/16 :goto_4

    .line 365
    :cond_d
    const/16 v30, 0x1

    .line 367
    goto/16 :goto_4

    .line 373
    :pswitch_a
    const/16 v8, 0x64

    .line 374
    goto/16 :goto_4

    .line 376
    :pswitch_b
    const/16 v8, 0x63

    .line 377
    goto/16 :goto_4

    .line 379
    :pswitch_c
    const/4 v12, 0x1

    goto/16 :goto_4

    .line 385
    :pswitch_d
    const/16 v35, 0x60

    move/from16 v0, v35

    if-ge v7, v0, :cond_f

    .line 386
    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_e

    .line 387
    add-int/lit8 v35, v7, 0x20

    move/from16 v0, v35

    int-to-char v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    :goto_8
    const/16 v30, 0x0

    goto/16 :goto_4

    .line 389
    :cond_e
    add-int/lit8 v35, v7, 0x20

    move/from16 v0, v35

    add-int/lit16 v0, v0, 0x80

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-char v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 393
    :cond_f
    const/16 v35, 0x6a

    move/from16 v0, v35

    if-eq v7, v0, :cond_10

    .line 394
    const/16 v16, 0x0

    .line 396
    :cond_10
    packed-switch v7, :pswitch_data_4

    :pswitch_e
    goto/16 :goto_4

    .line 425
    :pswitch_f
    const/4 v15, 0x1

    .line 426
    const/16 v8, 0x65

    .line 427
    goto/16 :goto_4

    .line 398
    :pswitch_10
    if-eqz v9, :cond_5

    .line 399
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v35

    if-nez v35, :cond_11

    .line 402
    const-string v35, "]C1"

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 405
    :cond_11
    const/16 v35, 0x1d

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 414
    :pswitch_11
    if-nez v34, :cond_12

    if-eqz v30, :cond_12

    .line 415
    const/16 v34, 0x1

    .line 416
    const/16 v30, 0x0

    goto/16 :goto_4

    .line 417
    :cond_12
    if-eqz v34, :cond_13

    if-eqz v30, :cond_13

    .line 418
    const/16 v34, 0x0

    .line 419
    const/16 v30, 0x0

    goto/16 :goto_4

    .line 421
    :cond_13
    const/16 v30, 0x1

    .line 423
    goto/16 :goto_4

    .line 429
    :pswitch_12
    const/16 v8, 0x65

    .line 430
    goto/16 :goto_4

    .line 432
    :pswitch_13
    const/16 v8, 0x63

    .line 433
    goto/16 :goto_4

    .line 435
    :pswitch_14
    const/4 v12, 0x1

    goto/16 :goto_4

    .line 441
    :pswitch_15
    const/16 v35, 0x64

    move/from16 v0, v35

    if-ge v7, v0, :cond_15

    .line 442
    const/16 v35, 0xa

    move/from16 v0, v35

    if-ge v7, v0, :cond_14

    .line 443
    const/16 v35, 0x30

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 445
    :cond_14
    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 447
    :cond_15
    const/16 v35, 0x6a

    move/from16 v0, v35

    if-eq v7, v0, :cond_16

    .line 448
    const/16 v16, 0x0

    .line 450
    :cond_16
    packed-switch v7, :pswitch_data_5

    :pswitch_16
    goto/16 :goto_4

    .line 467
    :pswitch_17
    const/16 v8, 0x64

    .line 468
    goto/16 :goto_4

    .line 452
    :pswitch_18
    if-eqz v9, :cond_5

    .line 453
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v35

    if-nez v35, :cond_17

    .line 456
    const-string v35, "]C1"

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 459
    :cond_17
    const/16 v35, 0x1d

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 464
    :pswitch_19
    const/16 v8, 0x65

    .line 465
    goto/16 :goto_4

    .line 470
    :pswitch_1a
    const/4 v12, 0x1

    goto/16 :goto_4

    .line 479
    :cond_18
    const/16 v8, 0x65

    goto/16 :goto_5

    .line 484
    .end local v5    # "arr$":[I
    .end local v14    # "i$":I
    .end local v21    # "len$":I
    .end local v33    # "unshift":Z
    :cond_19
    sub-int v18, v23, v19

    .line 489
    .local v18, "lastPatternSize":I
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v23

    .line 490
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v35

    sub-int v36, v23, v19

    div-int/lit8 v36, v36, 0x2

    add-int v36, v36, v23

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->min(II)I

    move-result v35

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v35

    if-nez v35, :cond_1a

    .line 493
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v35

    throw v35

    .line 497
    :cond_1a
    mul-int v35, v22, v17

    sub-int v6, v6, v35

    .line 499
    rem-int/lit8 v35, v6, 0x67

    move/from16 v0, v35

    move/from16 v1, v17

    if-eq v0, v1, :cond_1b

    .line 500
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v35

    throw v35

    .line 504
    :cond_1b
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    .line 505
    .local v28, "resultLength":I
    if-nez v28, :cond_1c

    .line 507
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v35

    throw v35

    .line 512
    :cond_1c
    if-lez v28, :cond_1d

    if-eqz v16, :cond_1d

    .line 513
    const/16 v35, 0x63

    move/from16 v0, v35

    if-ne v8, v0, :cond_1e

    .line 514
    add-int/lit8 v35, v28, -0x2

    move-object/from16 v0, v27

    move/from16 v1, v35

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 520
    :cond_1d
    :goto_9
    const/16 v35, 0x1

    aget v35, v32, v35

    const/16 v36, 0x0

    aget v36, v32, v36

    add-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const/high16 v36, 0x40000000    # 2.0f

    div-float v20, v35, v36

    .line 521
    .local v20, "left":F
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v35, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v36, v0

    const/high16 v37, 0x40000000    # 2.0f

    div-float v36, v36, v37

    add-float v29, v35, v36

    .line 523
    .local v29, "right":F
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v26

    .line 524
    .local v26, "rawCodesSize":I
    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v24, v0

    .line 525
    .local v24, "rawBytes":[B
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_a
    move/from16 v0, v26

    if-ge v13, v0, :cond_1f

    .line 526
    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Byte;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Byte;->byteValue()B

    move-result v35

    aput-byte v35, v24, v13

    .line 525
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 516
    .end local v13    # "i":I
    .end local v20    # "left":F
    .end local v24    # "rawBytes":[B
    .end local v26    # "rawCodesSize":I
    .end local v29    # "right":F
    :cond_1e
    add-int/lit8 v35, v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v35

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 529
    .restart local v13    # "i":I
    .restart local v20    # "left":F
    .restart local v24    # "rawBytes":[B
    .restart local v26    # "rawCodesSize":I
    .restart local v29    # "right":F
    :cond_1f
    new-instance v35, Lcom/google/zxing/Result;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    new-instance v39, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v39

    move/from16 v1, v20

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v39, v37, v38

    const/16 v38, 0x1

    new-instance v39, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v39

    move/from16 v1, v29

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v39, v37, v38

    sget-object v38, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v24

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v35

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 310
    :pswitch_data_1
    .packed-switch 0x67
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 317
    :pswitch_data_2
    .packed-switch 0x63
        :pswitch_15
        :pswitch_d
        :pswitch_5
    .end packed-switch

    .line 340
    :pswitch_data_3
    .packed-switch 0x60
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_c
    .end packed-switch

    .line 396
    :pswitch_data_4
    .packed-switch 0x60
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_13
        :pswitch_11
        :pswitch_12
        :pswitch_10
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_14
    .end packed-switch

    .line 450
    :pswitch_data_5
    .packed-switch 0x64
        :pswitch_17
        :pswitch_19
        :pswitch_18
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_1a
    .end packed-switch
.end method
