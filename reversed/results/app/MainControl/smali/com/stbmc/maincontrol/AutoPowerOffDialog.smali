.class public Lcom/stbmc/maincontrol/AutoPowerOffDialog;
.super Landroid/app/Activity;
.source "AutoPowerOffDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
.field public static final AUTOPOWER_DIALOG_HIDE:Ljava/lang/String; = "common.autopower.DIALOG_HIDE"

.field public static final Bundle_INFO:Ljava/lang/String; = "PostInfo"

.field public static final Bundle_RESULT:Ljava/lang/String; = "Result"

.field public static final DIALOG_HIDE:Ljava/lang/String; = "common.customdialog.DIALOG_HIDE"

.field public static final DIALOG_ID:Ljava/lang/String; = "dialogId"

.field public static final DLG_ONCLICK_CANCEL:I = 0x0

.field public static final DLG_ONCLICK_NEGATIVE:I = -0x2

.field public static final DLG_ONCLICK_NEUTRAL:I = -0x3

.field public static final DLG_ONCLICK_POSITIVE:I = -0x1

.field private static final HAVE_NO_BUTTON_DIALOG:I = 0x0

.field private static final HAVE_ONE_BUTTON_DIALOG:I = 0x1

.field private static final HAVE_THREE_BUTTON_DIALOG:I = 0x3

.field private static final HAVE_TWO_BUTTON_DIALOG:I = 0x2

.field public static final POST_EVENT:Ljava/lang/String; = "common.customdialog.POSTEVENT"

.field public static final RESULT_1ST_BUTTON:I = 0x1

.field public static final RESULT_2ND_BUTTON:I = 0x2

.field public static final RESULT_3RD_BUTTON:I = 0x3

.field public static final RESULT_NON_BUTTON:I = 0x0

.field public static final RESULT_RET_BUTTON:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AutoPowerOffDialog"


# instance fields
.field protected CloseDialogReceiver:Landroid/content/BroadcastReceiver;

.field private TAG_ID:I

.field public drawpic:Landroid/graphics/drawable/BitmapDrawable;

.field private iTimems:I

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mTextField:Landroid/widget/TextView;

.field private myAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->myAlertDialog:Landroid/app/AlertDialog;

    .line 81
    iput v1, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    .line 82
    iput v1, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->iTimems:I

    .line 84
    iput-object v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 87
    iput-object v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->drawpic:Landroid/graphics/drawable/BitmapDrawable;

    .line 89
    new-instance v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$1;

    invoke-direct {v0, p0}, Lcom/stbmc/maincontrol/AutoPowerOffDialog$1;-><init>(Lcom/stbmc/maincontrol/AutoPowerOffDialog;)V

    iput-object v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->CloseDialogReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/stbmc/maincontrol/AutoPowerOffDialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->myAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/stbmc/maincontrol/AutoPowerOffDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/stbmc/maincontrol/AutoPowerOffDialog;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->myAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/stbmc/maincontrol/AutoPowerOffDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->mTextField:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/stbmc/maincontrol/AutoPowerOffDialog;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/stbmc/maincontrol/AutoPowerOffDialog;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->mTextField:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/stbmc/maincontrol/AutoPowerOffDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    .prologue
    .line 51
    iget v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    return v0
.end method

.method private showAlertDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "message"    # Ljava/lang/CharSequence;
    .param p5, "positiveBtnText"    # Ljava/lang/CharSequence;
    .param p6, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "negativeBtnText"    # Ljava/lang/CharSequence;
    .param p8, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p9, "neutralBtnText"    # Ljava/lang/CharSequence;
    .param p10, "neutralListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 460
    const-string v3, "AutoPowerOffDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "title="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ",message="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    if-nez p1, :cond_0

    .line 463
    const-string v3, "AutoPowerOffDialog"

    const-string v4, "context is null!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v3, 0x0

    .line 660
    :goto_0
    return-object v3

    .line 467
    :cond_0
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 468
    .local v15, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "config.MarketCode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "51"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "config.OperatorsCode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 469
    new-instance v15, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    .end local v15    # "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 472
    .restart local v15    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    const/16 v4, 0x51a

    if-ne v3, v4, :cond_2

    const-string v3, "sys.zte.AndroidTV"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AndroidTV"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 473
    new-instance v15, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    .end local v15    # "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 476
    .restart local v15    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    if-eqz p2, :cond_3

    .line 477
    move-object/from16 v0, p0

    iget v3, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    const/16 v4, 0x51a

    if-ne v3, v4, :cond_7

    const-string v3, "sys.zte.AndroidTV"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AndroidTV"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 478
    const-string v3, "AutoPowerOffDialog"

    const-string v4, "1306 not to show the icon"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    .line 484
    move-object/from16 v0, p0

    iget v3, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    const/16 v4, 0x51a

    if-ne v3, v4, :cond_8

    const-string v3, "sys.zte.AndroidTV"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AndroidTV"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 485
    const-string v3, "AutoPowerOffDialog"

    const-string v4, "1306 not to show the title"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_4
    :goto_2
    if-eqz p4, :cond_c

    .line 491
    const-string v3, "AutoPowerOffDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "####===> message:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const-string v3, "config.MarketCode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "32"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "config.OperatorsCode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 493
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    .line 494
    .local v17, "factory":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 495
    .local v14, "DialogView_poweroff":Landroid/view/View;
    const/16 v3, 0x72

    move-object/from16 v0, p0

    iget v4, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    if-eq v3, v4, :cond_5

    const/16 v3, 0x74

    move-object/from16 v0, p0

    iget v4, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    if-eq v3, v4, :cond_5

    const/16 v3, 0x73

    move-object/from16 v0, p0

    iget v4, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    if-ne v3, v4, :cond_10

    .line 498
    :cond_5
    const/16 v16, 0x0

    .line 499
    .local v16, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 500
    .local v2, "cBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020016

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 501
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 502
    .local v5, "originalWidth":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 504
    .local v6, "originalHeight":I
    const/16 v24, 0xc8

    .line 505
    .local v24, "newWidth":I
    const/16 v23, 0xc8

    .line 507
    .local v23, "newHeight":I
    const-string v3, "1280"

    const-string v4, "sys.screen.width"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "720"

    const-string v4, "sys.screen.height"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 509
    const-string v3, "AutoPowerOffDialog"

    const-string v4, "change width=128 height=128"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/16 v24, 0x80

    .line 511
    const/16 v23, 0x80

    .line 514
    :cond_6
    move/from16 v0, v23

    int-to-float v3, v0

    int-to-float v4, v6

    div-float v25, v3, v4

    .line 515
    .local v25, "scale":F
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 516
    .local v7, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v25

    move/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 517
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 518
    new-instance v16, Landroid/graphics/drawable/BitmapDrawable;

    .end local v16    # "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 520
    .restart local v16    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 521
    .local v21, "mString":[Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_3
    move-object/from16 v0, v21

    array-length v3, v0

    move/from16 v0, v18

    if-ge v0, v3, :cond_9

    .line 522
    const-string v3, "AutoPowerOffDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "####===> message:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v8, v21, v18

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 480
    .end local v2    # "cBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "originalWidth":I
    .end local v6    # "originalHeight":I
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v14    # "DialogView_poweroff":Landroid/view/View;
    .end local v16    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v17    # "factory":Landroid/view/LayoutInflater;
    .end local v18    # "i":I
    .end local v21    # "mString":[Ljava/lang/String;
    .end local v23    # "newHeight":I
    .end local v24    # "newWidth":I
    .end local v25    # "scale":F
    :cond_7
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 487
    :cond_8
    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    .line 525
    .restart local v2    # "cBitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "originalWidth":I
    .restart local v6    # "originalHeight":I
    .restart local v7    # "matrix":Landroid/graphics/Matrix;
    .restart local v14    # "DialogView_poweroff":Landroid/view/View;
    .restart local v16    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "factory":Landroid/view/LayoutInflater;
    .restart local v18    # "i":I
    .restart local v21    # "mString":[Ljava/lang/String;
    .restart local v23    # "newHeight":I
    .restart local v24    # "newWidth":I
    .restart local v25    # "scale":F
    :cond_9
    const v3, 0x7f070016

    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 526
    .local v19, "image":Landroid/widget/ImageView;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 527
    const v3, 0x7f070015

    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 528
    .local v22, "mTitleText":Landroid/widget/TextView;
    const/4 v3, 0x0

    aget-object v3, v21, v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    const v3, 0x7f070018

    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->mTextField:Landroid/widget/TextView;

    .line 530
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->mTextField:Landroid/widget/TextView;

    const/4 v4, 0x1

    aget-object v4, v21, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    const v3, 0x7f070017

    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 532
    .local v20, "mImageText":Landroid/widget/TextView;
    const v3, 0x7f0500ce

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 536
    .end local v2    # "cBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "originalWidth":I
    .end local v6    # "originalHeight":I
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v16    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v18    # "i":I
    .end local v19    # "image":Landroid/widget/ImageView;
    .end local v20    # "mImageText":Landroid/widget/TextView;
    .end local v21    # "mString":[Ljava/lang/String;
    .end local v22    # "mTitleText":Landroid/widget/TextView;
    .end local v23    # "newHeight":I
    .end local v24    # "newWidth":I
    .end local v25    # "scale":F
    :goto_4
    const/16 v3, 0x4b6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    if-eq v3, v4, :cond_a

    const/16 v3, 0x72

    move-object/from16 v0, p0

    iget v4, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    if-eq v3, v4, :cond_a

    const/16 v3, 0x74

    move-object/from16 v0, p0

    iget v4, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    if-eq v3, v4, :cond_a

    const/16 v3, 0x73

    move-object/from16 v0, p0

    iget v4, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    if-eq v3, v4, :cond_a

    const/16 v3, 0xfa1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    if-ne v3, v4, :cond_b

    .line 543
    :cond_a
    new-instance v8, Lcom/stbmc/maincontrol/AutoPowerOffDialog$2;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->iTimems:I

    add-int/lit16 v3, v3, 0x1f4

    int-to-long v10, v3

    const-wide/16 v12, 0x1f4

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v14}, Lcom/stbmc/maincontrol/AutoPowerOffDialog$2;-><init>(Lcom/stbmc/maincontrol/AutoPowerOffDialog;JJLandroid/view/View;)V

    .line 571
    invoke-virtual {v8}, Lcom/stbmc/maincontrol/AutoPowerOffDialog$2;->start()Landroid/os/CountDownTimer;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 574
    :cond_b
    const-string v3, "AutoPowerOffDialog"

    const-string v4, "####===> builder.setView:"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-virtual {v15, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 650
    .end local v14    # "DialogView_poweroff":Landroid/view/View;
    .end local v17    # "factory":Landroid/view/LayoutInflater;
    :cond_c
    :goto_5
    if-eqz p6, :cond_d

    if-eqz p5, :cond_d

    .line 651
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v15, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 653
    :cond_d
    if-eqz p8, :cond_e

    if-eqz p7, :cond_e

    .line 654
    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-virtual {v15, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 656
    :cond_e
    if-eqz p10, :cond_f

    if-eqz p9, :cond_f

    .line 657
    move-object/from16 v0, p9

    move-object/from16 v1, p10

    invoke-virtual {v15, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 659
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 660
    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 534
    .restart local v14    # "DialogView_poweroff":Landroid/view/View;
    .restart local v17    # "factory":Landroid/view/LayoutInflater;
    :cond_10
    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 577
    .end local v14    # "DialogView_poweroff":Landroid/view/View;
    .end local v17    # "factory":Landroid/view/LayoutInflater;
    :cond_11
    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 578
    const/16 v3, 0x4b6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    if-eq v3, v4, :cond_12

    const/16 v3, 0x72

    move-object/from16 v0, p0

    iget v4, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    if-eq v3, v4, :cond_12

    const/16 v3, 0x74

    move-object/from16 v0, p0

    iget v4, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    if-eq v3, v4, :cond_12

    const/16 v3, 0x73

    move-object/from16 v0, p0

    iget v4, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    if-eq v3, v4, :cond_12

    const/16 v3, 0xfa1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    if-ne v3, v4, :cond_13

    .line 584
    :cond_12
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    .line 585
    .restart local v17    # "factory":Landroid/view/LayoutInflater;
    const v3, 0x7f03000b

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 587
    .restart local v14    # "DialogView_poweroff":Landroid/view/View;
    new-instance v8, Lcom/stbmc/maincontrol/AutoPowerOffDialog$3;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->iTimems:I

    add-int/lit16 v3, v3, 0x1f4

    int-to-long v10, v3

    const-wide/16 v12, 0x1f4

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v14}, Lcom/stbmc/maincontrol/AutoPowerOffDialog$3;-><init>(Lcom/stbmc/maincontrol/AutoPowerOffDialog;JJLandroid/view/View;)V

    .line 615
    invoke-virtual {v8}, Lcom/stbmc/maincontrol/AutoPowerOffDialog$3;->start()Landroid/os/CountDownTimer;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 617
    const-string v3, "AutoPowerOffDialog"

    const-string v4, "####===> builder.setView:"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-virtual {v15, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_5

    .line 619
    .end local v14    # "DialogView_poweroff":Landroid/view/View;
    .end local v17    # "factory":Landroid/view/LayoutInflater;
    :cond_13
    const/16 v3, 0xfa2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    if-ne v3, v4, :cond_c

    .line 620
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    .line 621
    .restart local v17    # "factory":Landroid/view/LayoutInflater;
    const v3, 0x7f03000b

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 623
    .restart local v14    # "DialogView_poweroff":Landroid/view/View;
    new-instance v8, Lcom/stbmc/maincontrol/AutoPowerOffDialog$4;

    const-wide/16 v10, 0x2710

    const-wide/16 v12, 0x3e8

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v14}, Lcom/stbmc/maincontrol/AutoPowerOffDialog$4;-><init>(Lcom/stbmc/maincontrol/AutoPowerOffDialog;JJLandroid/view/View;)V

    .line 642
    invoke-virtual {v8}, Lcom/stbmc/maincontrol/AutoPowerOffDialog$4;->start()Landroid/os/CountDownTimer;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 644
    const-string v3, "AutoPowerOffDialog"

    const-string v4, "####===> builder.setView:"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-virtual {v15, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_5
.end method

.method public static showCustomDialog(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "caller_context"    # Landroid/content/Context;
    .param p1, "TAG_ID"    # I
    .param p2, "iTimems"    # I
    .param p3, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    const-string v2, "tag_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    const-string v2, "time_ms"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    const-string v2, "dTitle"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v2, "dmessage"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 142
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 145
    return-void
.end method

.method public static showCustomDialog(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "caller_context"    # Landroid/content/Context;
    .param p1, "TAG_ID"    # I
    .param p2, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    const-string v2, "tag_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    const-string v2, "dTitle"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v2, "dmessage"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 123
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method public static showCustomDialog(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "caller_context"    # Landroid/content/Context;
    .param p1, "TAG_ID"    # I
    .param p2, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "one_button_text"    # Ljava/lang/String;

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    const-string v2, "tag_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    const-string v2, "dTitle"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v2, "dmessage"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v2, "firstBtnText"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 161
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 164
    return-void
.end method

.method public static showCustomDialog(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "caller_context"    # Landroid/content/Context;
    .param p1, "TAG_ID"    # I
    .param p2, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "one_button_text"    # Ljava/lang/String;
    .param p6, "two_button_text"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 173
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    const-string v2, "tag_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    const-string v2, "dTitle"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v2, "dmessage"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v2, "firstBtnText"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v2, "secondBtnText"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 182
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 185
    return-void
.end method

.method public static showCustomDialog(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "caller_context"    # Landroid/content/Context;
    .param p1, "TAG_ID"    # I
    .param p2, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "one_button_text"    # Ljava/lang/String;
    .param p6, "two_button_text"    # Ljava/lang/String;
    .param p7, "three_button_text"    # Ljava/lang/String;

    .prologue
    .line 191
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 194
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    const-string v2, "tag_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    const-string v2, "dTitle"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v2, "dmessage"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v2, "firstBtnText"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v2, "secondBtnText"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v2, "thirdBtnText"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 204
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 207
    return-void
.end method


# virtual methods
.method public SendDialogResult(II)V
    .locals 5
    .param p1, "dialogId"    # I
    .param p2, "result"    # I

    .prologue
    .line 399
    const-string v2, "AutoPowerOffDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in SendDialogResult(),dialogId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-string v2, "AutoPowerOffDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in SendDialogResult(),result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v0, Landroid/content/Intent;

    const-string v2, "common.customdialog.POSTEVENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 403
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "dialogId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 404
    const-string v2, "Result"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 405
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 406
    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->sendBroadcast(Landroid/content/Intent;)V

    .line 407
    return-void
.end method

.method public createNoButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 211
    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    move-object v10, v5

    invoke-direct/range {v0 .. v10}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->showAlertDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->myAlertDialog:Landroid/app/AlertDialog;

    .line 213
    iget-object v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 214
    return-void
.end method

.method public createOneButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "button_text"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 218
    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p0

    move-object v8, v7

    move-object v9, v7

    move-object v10, v7

    invoke-direct/range {v0 .. v10}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->showAlertDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->myAlertDialog:Landroid/app/AlertDialog;

    .line 220
    return-void
.end method

.method public createThreeButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "one_button_text"    # Ljava/lang/String;
    .param p5, "two_button_text"    # Ljava/lang/String;
    .param p6, "three_button_text"    # Ljava/lang/String;

    .prologue
    .line 234
    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p0

    move-object/from16 v7, p5

    move-object v8, p0

    move-object/from16 v9, p6

    move-object v10, p0

    invoke-direct/range {v0 .. v10}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->showAlertDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->myAlertDialog:Landroid/app/AlertDialog;

    .line 237
    return-void
.end method

.method public createTwoButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "one_button_text"    # Ljava/lang/String;
    .param p5, "two_button_text"    # Ljava/lang/String;

    .prologue
    .line 225
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p0

    move-object/from16 v7, p5

    move-object v8, p0

    invoke-direct/range {v0 .. v10}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->showAlertDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->myAlertDialog:Landroid/app/AlertDialog;

    .line 228
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 431
    iget v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->SendDialogResult(II)V

    .line 432
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 433
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->finish()V

    .line 434
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 411
    const-string v1, "AutoPowerOffDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onclick dialog, which----->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/16 v1, 0xe11

    const-string v2, "config.MarketCode"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    const-string v2, "config.OperatorsCode"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 414
    const-string v1, "sys.vod.showdialog"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_0
    const/4 v0, 0x0

    .line 417
    .local v0, "butindex":I
    const/4 v1, -0x3

    if-ne v1, p2, :cond_2

    .line 418
    const/4 v0, 0x3

    .line 424
    :cond_1
    :goto_0
    iget v1, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    invoke-virtual {p0, v1, v0}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->SendDialogResult(II)V

    .line 425
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 426
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->finish()V

    .line 427
    return-void

    .line 419
    :cond_2
    const/4 v1, -0x2

    if-ne v1, p2, :cond_3

    .line 420
    const/4 v0, 0x2

    goto :goto_0

    .line 421
    :cond_3
    const/4 v1, -0x1

    if-ne v1, p2, :cond_1

    .line 422
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "saveInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 360
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 361
    const-string v1, "AutoPowerOffDialog"

    const-string v2, "###====> onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 365
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "common.customdialog.DIALOG_HIDE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    const-string v1, "common.autopower.DIALOG_HIDE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->CloseDialogReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 368
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->showMyDialog()V

    .line 369
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 389
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 390
    const-string v0, "AutoPowerOffDialog"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->CloseDialogReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 392
    iget-object v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->myAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->myAlertDialog:Landroid/app/AlertDialog;

    .line 396
    :cond_0
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 438
    const/16 v2, 0xfa2

    iget v3, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    if-ne v2, v3, :cond_1

    .line 439
    const-string v1, "AutoPowerOffDialog"

    const-string v2, "onKey dialog, 4002"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    :goto_0
    return v0

    .line 442
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 443
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    move v0, v1

    .line 444
    goto :goto_0

    .line 446
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 449
    invoke-super {p0, p3}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 373
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 374
    const-string v0, "AutoPowerOffDialog"

    const-string v1, "###====> onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    const/16 v1, 0x4b7

    if-ne v0, v1, :cond_0

    .line 380
    iget-object v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->myAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->myAlertDialog:Landroid/app/AlertDialog;

    .line 385
    :cond_0
    return-void
.end method

.method public showMyDialog()V
    .locals 34

    .prologue
    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->getIntent()Landroid/content/Intent;

    move-result-object v29

    .line 241
    .local v29, "intent":Landroid/content/Intent;
    const-string v2, "PostInfo"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v33

    .line 242
    .local v33, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v27

    .line 243
    .local v27, "i":I
    const-string v2, "tag_id"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    .line 244
    const-string v2, "time_ms"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->iTimems:I

    .line 245
    const-string v2, "dTitle"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "title":Ljava/lang/String;
    const-string v2, "dmessage"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, "message":Ljava/lang/String;
    const-string v2, "AutoPowerOffDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "###===> TAG_ID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    move-object/from16 v0, p0

    iget v2, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    const/16 v8, 0x51a

    if-ne v2, v8, :cond_0

    const-string v2, "sys.zte.AndroidTV"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "AndroidTV"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    const-string v2, "sys.zte.androidtv_1306"

    const-string v8, "1306"

    invoke-static {v2, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_0
    const-string v2, "config.MarketCode"

    const/4 v8, 0x0

    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 257
    .local v21, "MarketCode":I
    const-string v2, "config.OperatorCode"

    const/4 v8, 0x0

    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 258
    .local v22, "OperatorCode":I
    const/4 v3, 0x0

    .line 259
    .local v3, "drawpic":Landroid/graphics/drawable/BitmapDrawable;
    const/16 v2, 0x4b1

    move/from16 v0, v21

    if-ne v2, v0, :cond_1

    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v2, v0, :cond_1

    .line 261
    const-string v2, "AutoPowerOffDialog"

    const-string v8, "###===> Belarus get rus_bg.jpg"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :try_start_0
    const-string v2, "/data/data/com.stbmc.maincontrol/files/mcres/respicsh/rus_bg.jpg"

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v28

    .line 264
    .local v28, "image":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "drawpic":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, v28

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v28    # "image":Landroid/graphics/Bitmap;
    .restart local v3    # "drawpic":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    :goto_0
    packed-switch v27, :pswitch_data_0

    .line 291
    const-string v17, "notice"

    const-string v18, "the message"

    const-string v19, "OK"

    const-string v20, "Cancle"

    move-object/from16 v15, p0

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v20}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->createTwoButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->myAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_5

    .line 296
    const-string v2, "config.MarketCode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "51"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "config.OperatorsCode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "2"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v24

    .line 298
    .local v24, "dialogWindow":Landroid/view/Window;
    const/16 v2, 0x11

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v31

    .line 300
    .local v31, "m":Landroid/view/WindowManager;
    invoke-interface/range {v31 .. v31}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v23

    .line 301
    .local v23, "d":Landroid/view/Display;
    invoke-virtual/range {v24 .. v24}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v32

    .line 302
    .local v32, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v8, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    double-to-int v2, v8

    move-object/from16 v0, v32

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 303
    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v8, v2

    const-wide v10, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v8, v10

    double-to-int v2, v8

    move-object/from16 v0, v32

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 306
    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 309
    .end local v23    # "d":Landroid/view/Display;
    .end local v24    # "dialogWindow":Landroid/view/Window;
    .end local v31    # "m":Landroid/view/WindowManager;
    .end local v32    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->TAG_ID:I

    const/16 v8, 0x51a

    if-ne v2, v8, :cond_3

    const-string v2, "sys.zte.AndroidTV"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "AndroidTV"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 310
    const-string v2, "AutoPowerOffDialog"

    const-string v8, "sys.zte.AndroidTV is AndroidTV"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v24

    .line 325
    .restart local v24    # "dialogWindow":Landroid/view/Window;
    const/16 v2, 0x11

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 327
    const/16 v2, 0x70

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v31

    .line 329
    .restart local v31    # "m":Landroid/view/WindowManager;
    invoke-interface/range {v31 .. v31}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v23

    .line 330
    .restart local v23    # "d":Landroid/view/Display;
    invoke-virtual/range {v24 .. v24}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v30

    .line 331
    .local v30, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v2, "AutoPowerOffDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Display: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " * "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "==>dialogWindow: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    iget v9, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " * "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    iget v9, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (x, y): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    iget v9, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " * "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    iget v9, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v8, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v8, v10

    double-to-int v2, v8

    move-object/from16 v0, v30

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 337
    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v8, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v8, v10

    double-to-int v2, v8

    move-object/from16 v0, v30

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 338
    const-string v2, "AutoPowerOffDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set dialogWindow: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    iget v9, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " * "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    iget v9, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 344
    .end local v23    # "d":Landroid/view/Display;
    .end local v24    # "dialogWindow":Landroid/view/Window;
    .end local v30    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v31    # "m":Landroid/view/WindowManager;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 348
    const/4 v2, 0x2

    move/from16 v0, v27

    if-ne v0, v2, :cond_4

    .line 350
    const-string v2, "AutoPowerOffDialog"

    const-string v8, "###===> two button, myAlertDialog.getButton(-2).requestFocus()!"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->myAlertDialog:Landroid/app/AlertDialog;

    const/4 v8, -0x2

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->requestFocus()Z

    .line 356
    :cond_4
    :goto_2
    return-void

    .line 265
    .end local v3    # "drawpic":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v25

    .line 266
    .local v25, "e":Ljava/lang/Exception;
    const-string v2, "AutoPowerOffDialog"

    const-string v8, "###===> Belarus get rus_bg.jpg error"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->printStackTrace()V

    .line 268
    const/4 v3, 0x0

    .restart local v3    # "drawpic":Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_0

    .line 273
    .end local v25    # "e":Ljava/lang/Exception;
    :pswitch_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->createNoButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 276
    :pswitch_1
    const-string v2, "firstBtnText"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 277
    .local v26, "ft":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->createOneButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 280
    .end local v26    # "ft":Ljava/lang/String;
    :pswitch_2
    const-string v2, "firstBtnText"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 281
    .local v6, "wft":Ljava/lang/String;
    const-string v2, "secondBtnText"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "wst":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 282
    invoke-virtual/range {v2 .. v7}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->createTwoButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 285
    .end local v6    # "wft":Ljava/lang/String;
    .end local v7    # "wst":Ljava/lang/String;
    :pswitch_3
    const-string v2, "firstBtnText"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 286
    .local v12, "tft":Ljava/lang/String;
    const-string v2, "secondBtnText"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 287
    .local v13, "tst":Ljava/lang/String;
    const-string v2, "thirdBtnText"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "ttt":Ljava/lang/String;
    move-object/from16 v8, p0

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    .line 288
    invoke-virtual/range {v8 .. v14}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->createThreeButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 354
    .end local v12    # "tft":Ljava/lang/String;
    .end local v13    # "tst":Ljava/lang/String;
    .end local v14    # "ttt":Ljava/lang/String;
    :cond_5
    const-string v2, "AutoPowerOffDialog"

    const-string v8, "create dialog error, dialog is null, create dialog first"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public showPowerOffDialog()V
    .locals 9

    .prologue
    .line 666
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 667
    .local v8, "factory":Landroid/view/LayoutInflater;
    const v0, 0x7f03000b

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 669
    .local v6, "DialogView_poweroff":Landroid/view/View;
    new-instance v0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$5;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/stbmc/maincontrol/AutoPowerOffDialog$5;-><init>(Lcom/stbmc/maincontrol/AutoPowerOffDialog;JJ)V

    .line 682
    invoke-virtual {v0}, Lcom/stbmc/maincontrol/AutoPowerOffDialog$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 684
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 685
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0500a6

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 686
    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 687
    invoke-virtual {v7, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 688
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->myAlertDialog:Landroid/app/AlertDialog;

    .line 690
    iget-object v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->myAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 700
    :goto_0
    return-void

    .line 697
    :cond_0
    const-string v0, "AutoPowerOffDialog"

    const-string v1, "create dialog error, dialog is null, create dialog first"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
