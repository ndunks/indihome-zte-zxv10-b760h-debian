.class public Lcom/stbmc/maincontrol/CustomQRDialog;
.super Landroid/app/Activity;
.source "CustomQRDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
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

.field private static final TAG:Ljava/lang/String; = "CustomQRDialog"

.field public static g_content_picuter:Landroid/graphics/drawable/Drawable;


# instance fields
.field protected CloseDialogReceiver:Landroid/content/BroadcastReceiver;

.field private TAG_ID:I

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

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/stbmc/maincontrol/CustomQRDialog;->myAlertDialog:Landroid/app/AlertDialog;

    .line 70
    iput v0, p0, Lcom/stbmc/maincontrol/CustomQRDialog;->TAG_ID:I

    .line 71
    iput v0, p0, Lcom/stbmc/maincontrol/CustomQRDialog;->iTimems:I

    .line 73
    iput-object v1, p0, Lcom/stbmc/maincontrol/CustomQRDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 77
    new-instance v0, Lcom/stbmc/maincontrol/CustomQRDialog$1;

    invoke-direct {v0, p0}, Lcom/stbmc/maincontrol/CustomQRDialog$1;-><init>(Lcom/stbmc/maincontrol/CustomQRDialog;)V

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomQRDialog;->CloseDialogReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/stbmc/maincontrol/CustomQRDialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/stbmc/maincontrol/CustomQRDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomQRDialog;->myAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/stbmc/maincontrol/CustomQRDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/stbmc/maincontrol/CustomQRDialog;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/stbmc/maincontrol/CustomQRDialog;->myAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private showAlertDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "contentPicture"    # Landroid/graphics/drawable/Drawable;
    .param p4, "title"    # Ljava/lang/CharSequence;
    .param p5, "message"    # Ljava/lang/CharSequence;
    .param p6, "positiveBtnText"    # Ljava/lang/CharSequence;
    .param p7, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "negativeBtnText"    # Ljava/lang/CharSequence;
    .param p9, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p10, "neutralBtnText"    # Ljava/lang/CharSequence;
    .param p11, "neutralListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 347
    const-string v10, "CustomQRDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "title="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",message="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    if-nez p1, :cond_0

    .line 350
    const-string v10, "CustomQRDialog"

    const-string v11, "context is null!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v10, 0x0

    .line 408
    :goto_0
    return-object v10

    .line 354
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 355
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_1

    .line 356
    invoke-virtual {v3, p2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 358
    :cond_1
    if-eqz p4, :cond_2

    .line 359
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 361
    :cond_2
    if-eqz p5, :cond_4

    .line 362
    const-string v10, "CustomQRDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "####===> message:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string v10, "config.MarketCode"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "32"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "config.OperatorsCode"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 364
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 365
    .local v4, "factory":Landroid/view/LayoutInflater;
    const v10, 0x7f030006

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 368
    .local v2, "DialogView_poweroff":Landroid/view/View;
    invoke-interface/range {p5 .. p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "!"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 369
    .local v8, "mString":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v10, v8

    if-ge v5, v10, :cond_3

    .line 370
    const-string v10, "CustomQRDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "####===> message:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v8, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 373
    :cond_3
    const v10, 0x7f070016

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 374
    .local v6, "image":Landroid/widget/ImageView;
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 375
    const v10, 0x7f070015

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 376
    .local v9, "mTitleText":Landroid/widget/TextView;
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    const v10, 0x7f070018

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/stbmc/maincontrol/CustomQRDialog;->mTextField:Landroid/widget/TextView;

    .line 378
    iget-object v10, p0, Lcom/stbmc/maincontrol/CustomQRDialog;->mTextField:Landroid/widget/TextView;

    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    const v10, 0x7f070017

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 380
    .local v7, "mImageText":Landroid/widget/TextView;
    const v10, 0x7f0500ce

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    .line 381
    const-string v10, "CustomQRDialog"

    const-string v11, "####===> builder.setView:"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 398
    .end local v2    # "DialogView_poweroff":Landroid/view/View;
    .end local v4    # "factory":Landroid/view/LayoutInflater;
    .end local v5    # "i":I
    .end local v6    # "image":Landroid/widget/ImageView;
    .end local v7    # "mImageText":Landroid/widget/TextView;
    .end local v8    # "mString":[Ljava/lang/String;
    .end local v9    # "mTitleText":Landroid/widget/TextView;
    :cond_4
    :goto_2
    if-eqz p7, :cond_5

    if-eqz p6, :cond_5

    .line 399
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 401
    :cond_5
    if-eqz p9, :cond_6

    if-eqz p8, :cond_6

    .line 402
    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 404
    :cond_6
    if-eqz p11, :cond_7

    if-eqz p10, :cond_7

    .line 405
    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 407
    :cond_7
    invoke-virtual {v3, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 408
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto/16 :goto_0

    .line 384
    :cond_8
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 385
    .restart local v4    # "factory":Landroid/view/LayoutInflater;
    const v10, 0x7f030007

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 388
    .restart local v2    # "DialogView_poweroff":Landroid/view/View;
    const v10, 0x7f070016

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 389
    .restart local v6    # "image":Landroid/widget/ImageView;
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    const v10, 0x7f070018

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/stbmc/maincontrol/CustomQRDialog;->mTextField:Landroid/widget/TextView;

    .line 391
    iget-object v10, p0, Lcom/stbmc/maincontrol/CustomQRDialog;->mTextField:Landroid/widget/TextView;

    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    const-string v10, "CustomQRDialog"

    const-string v11, "####===> builder.setView:"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
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
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/stbmc/maincontrol/CustomQRDialog;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    const-string v2, "tag_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    const-string v2, "time_ms"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    const-string v2, "dTitle"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v2, "dmessage"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 125
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method public static showCustomDialog(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "caller_context"    # Landroid/content/Context;
    .param p1, "TAG_ID"    # I
    .param p2, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p3, "content_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "one_button_text"    # Ljava/lang/String;
    .param p7, "two_button_text"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/stbmc/maincontrol/CustomQRDialog;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 156
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 157
    const-string v2, "tag_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    const-string v2, "dTitle"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v2, "dmessage"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v2, "firstBtnText"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v2, "secondBtnText"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sput-object p3, Lcom/stbmc/maincontrol/CustomQRDialog;->g_content_picuter:Landroid/graphics/drawable/Drawable;

    .line 164
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 165
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 168
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
    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/stbmc/maincontrol/CustomQRDialog;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string v2, "tag_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string v2, "dTitle"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "dmessage"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 106
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 109
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
    .line 133
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/stbmc/maincontrol/CustomQRDialog;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    const-string v2, "tag_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    const-string v2, "dTitle"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v2, "dmessage"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v2, "firstBtnText"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 144
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 147
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
    .line 174
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/stbmc/maincontrol/CustomQRDialog;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 177
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    const-string v2, "tag_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    const-string v2, "dTitle"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v2, "dmessage"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v2, "firstBtnText"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v2, "secondBtnText"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v2, "thirdBtnText"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 187
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 190
    return-void
.end method


# virtual methods
.method public SendDialogResult(II)V
    .locals 5
    .param p1, "dialogId"    # I
    .param p2, "result"    # I

    .prologue
    .line 295
    const-string v2, "CustomQRDialog"

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

    .line 296
    const-string v2, "CustomQRDialog"

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

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v2, "common.customdialog.POSTEVENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 299
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "dialogId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 300
    const-string v2, "Result"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/CustomQRDialog;->sendBroadcast(Landroid/content/Intent;)V

    .line 303
    return-void
.end method

.method public createNoButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 194
    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v0 .. v11}, Lcom/stbmc/maincontrol/CustomQRDialog;->showAlertDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomQRDialog;->myAlertDialog:Landroid/app/AlertDialog;

    .line 196
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomQRDialog;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 197
    return-void
.end method

.method public createOneButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "button_text"    # Ljava/lang/String;

    .prologue
    .line 201
    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object v7, p0

    invoke-direct/range {v0 .. v11}, Lcom/stbmc/maincontrol/CustomQRDialog;->showAlertDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomQRDialog;->myAlertDialog:Landroid/app/AlertDialog;

    .line 203
    return-void
.end method

.method public createThreeButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "one_button_text"    # Ljava/lang/String;
    .param p5, "two_button_text"    # Ljava/lang/String;
    .param p6, "three_button_text"    # Ljava/lang/String;

    .prologue
    .line 217
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object v7, p0

    move-object/from16 v8, p5

    move-object v9, p0

    move-object/from16 v10, p6

    move-object v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/stbmc/maincontrol/CustomQRDialog;->showAlertDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomQRDialog;->myAlertDialog:Landroid/app/AlertDialog;

    .line 220
    return-void
.end method

.method public createTwoButtonDialog(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p2, "content_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "one_button_text"    # Ljava/lang/String;
    .param p6, "two_button_text"    # Ljava/lang/String;

    .prologue
    .line 208
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v7, p0

    move-object/from16 v8, p6

    move-object v9, p0

    invoke-direct/range {v0 .. v11}, Lcom/stbmc/maincontrol/CustomQRDialog;->showAlertDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomQRDialog;->myAlertDialog:Landroid/app/AlertDialog;

    .line 211
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 323
    iget v0, p0, Lcom/stbmc/maincontrol/CustomQRDialog;->TAG_ID:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/stbmc/maincontrol/CustomQRDialog;->SendDialogResult(II)V

    .line 324
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 325
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/CustomQRDialog;->finish()V

    .line 326
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 307
    const-string v1, "CustomQRDialog"

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

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "butindex":I
    const/4 v1, -0x3

    if-ne v1, p2, :cond_1

    .line 310
    const/4 v0, 0x3

    .line 316
    :cond_0
    :goto_0
    iget v1, p0, Lcom/stbmc/maincontrol/CustomQRDialog;->TAG_ID:I

    invoke-virtual {p0, v1, v0}, Lcom/stbmc/maincontrol/CustomQRDialog;->SendDialogResult(II)V

    .line 317
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 318
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/CustomQRDialog;->finish()V

    .line 319
    return-void

    .line 311
    :cond_1
    const/4 v1, -0x2

    if-ne v1, p2, :cond_2

    .line 312
    const/4 v0, 0x2

    goto :goto_0

    .line 313
    :cond_2
    const/4 v1, -0x1

    if-ne v1, p2, :cond_0

    .line 314
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "saveInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 274
    const-string v1, "CustomQRDialog"

    const-string v2, "###====> onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 278
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "common.customdialog.DIALOG_HIDE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomQRDialog;->CloseDialogReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/stbmc/maincontrol/CustomQRDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 280
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/CustomQRDialog;->showMyDialog()V

    .line 281
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 285
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 286
    const-string v0, "CustomQRDialog"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomQRDialog;->CloseDialogReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/CustomQRDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 288
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomQRDialog;->myAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomQRDialog;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomQRDialog;->myAlertDialog:Landroid/app/AlertDialog;

    .line 292
    :cond_0
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 330
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 331
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 337
    :goto_0
    return v0

    .line 334
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 335
    const/4 v0, 0x0

    goto :goto_0

    .line 337
    :cond_1
    invoke-super {p0, p3}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public showMyDialog()V
    .locals 27

    .prologue
    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/stbmc/maincontrol/CustomQRDialog;->getIntent()Landroid/content/Intent;

    move-result-object v25

    .line 224
    .local v25, "intent":Landroid/content/Intent;
    const-string v2, "PostInfo"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v26

    .line 225
    .local v26, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 226
    .local v24, "i":I
    const-string v2, "tag_id"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/stbmc/maincontrol/CustomQRDialog;->TAG_ID:I

    .line 227
    const-string v2, "time_ms"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/stbmc/maincontrol/CustomQRDialog;->iTimems:I

    .line 228
    const-string v2, "dTitle"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, "title":Ljava/lang/String;
    const-string v2, "dmessage"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, "message":Ljava/lang/String;
    const-string v2, "CustomQRDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "###===> TAG_ID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/stbmc/maincontrol/CustomQRDialog;->TAG_ID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    packed-switch v24, :pswitch_data_0

    .line 253
    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "notice"

    const-string v20, "the message"

    const-string v21, "OK"

    const-string v22, "Cancle"

    move-object/from16 v16, p0

    invoke-virtual/range {v16 .. v22}, Lcom/stbmc/maincontrol/CustomQRDialog;->createTwoButtonDialog(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/stbmc/maincontrol/CustomQRDialog;->myAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/stbmc/maincontrol/CustomQRDialog;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 261
    const/4 v2, 0x2

    move/from16 v0, v24

    if-ne v0, v2, :cond_0

    .line 263
    const-string v2, "CustomQRDialog"

    const-string v3, "###===> two button, myAlertDialog.getButton(-2).requestFocus()!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/stbmc/maincontrol/CustomQRDialog;->myAlertDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->requestFocus()Z

    .line 269
    :cond_0
    :goto_1
    return-void

    .line 235
    :pswitch_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v6}, Lcom/stbmc/maincontrol/CustomQRDialog;->createNoButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :pswitch_1
    const-string v2, "firstBtnText"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 239
    .local v23, "ft":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v5, v6, v1}, Lcom/stbmc/maincontrol/CustomQRDialog;->createOneButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    .end local v23    # "ft":Ljava/lang/String;
    :pswitch_2
    const-string v2, "firstBtnText"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 243
    .local v7, "wft":Ljava/lang/String;
    const-string v2, "secondBtnText"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 244
    .local v8, "wst":Ljava/lang/String;
    const/4 v3, 0x0

    sget-object v4, Lcom/stbmc/maincontrol/CustomQRDialog;->g_content_picuter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/stbmc/maincontrol/CustomQRDialog;->createTwoButtonDialog(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    .end local v7    # "wft":Ljava/lang/String;
    .end local v8    # "wst":Ljava/lang/String;
    :pswitch_3
    const-string v2, "firstBtnText"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 248
    .local v13, "tft":Ljava/lang/String;
    const-string v2, "secondBtnText"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 249
    .local v14, "tst":Ljava/lang/String;
    const-string v2, "thirdBtnText"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 250
    .local v15, "ttt":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v9, p0

    move-object v11, v5

    move-object v12, v6

    invoke-virtual/range {v9 .. v15}, Lcom/stbmc/maincontrol/CustomQRDialog;->createThreeButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    .end local v13    # "tft":Ljava/lang/String;
    .end local v14    # "tst":Ljava/lang/String;
    .end local v15    # "ttt":Ljava/lang/String;
    :cond_1
    const-string v2, "CustomQRDialog"

    const-string v3, "create dialog error, dialog is null, create dialog first"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
