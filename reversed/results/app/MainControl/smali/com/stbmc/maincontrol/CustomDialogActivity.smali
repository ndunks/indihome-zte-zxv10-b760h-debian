.class public Lcom/stbmc/maincontrol/CustomDialogActivity;
.super Landroid/app/Activity;
.source "CustomDialogActivity.java"

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

.field private static final TAG:Ljava/lang/String; = "CustomDialogActivity"


# instance fields
.field protected CloseDialogReceiver:Landroid/content/BroadcastReceiver;

.field private TAG_ID:I

.field private bOnResume:Z

.field private myAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomDialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    .line 59
    iput v1, p0, Lcom/stbmc/maincontrol/CustomDialogActivity;->TAG_ID:I

    .line 60
    iput-boolean v1, p0, Lcom/stbmc/maincontrol/CustomDialogActivity;->bOnResume:Z

    .line 62
    new-instance v0, Lcom/stbmc/maincontrol/CustomDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/stbmc/maincontrol/CustomDialogActivity$1;-><init>(Lcom/stbmc/maincontrol/CustomDialogActivity;)V

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomDialogActivity;->CloseDialogReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/stbmc/maincontrol/CustomDialogActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/stbmc/maincontrol/CustomDialogActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomDialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/stbmc/maincontrol/CustomDialogActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/stbmc/maincontrol/CustomDialogActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/stbmc/maincontrol/CustomDialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/stbmc/maincontrol/CustomDialogActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/stbmc/maincontrol/CustomDialogActivity;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/stbmc/maincontrol/CustomDialogActivity;->bOnResume:Z

    return v0
.end method

.method private showAlertDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 5
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
    .line 445
    const-string v2, "CustomDialogActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    if-nez p1, :cond_0

    .line 447
    const-string v2, "CustomDialogActivity"

    const-string v3, "context is null!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v2, 0x0

    .line 490
    :goto_0
    return-object v2

    .line 452
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 455
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "sys.zte.AndroidTV"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AndroidTV"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 456
    const-string v2, "CustomDialogActivity"

    const-string v3, "create CustomBuilderDialog.Builder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p1}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 460
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    const-string v2, "config.MarketCode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "44"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "config.OperatorsCode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 461
    const-string v2, "CustomDialogActivity"

    const-string v3, "guangdongDX create CustomBuilderDialog.Builder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p1}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 463
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    .line 464
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const-string v2, "sys.zte.AndroidTV"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AndroidTV"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 471
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 472
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 474
    :cond_3
    if-eqz p3, :cond_4

    .line 475
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 477
    :cond_4
    if-eqz p4, :cond_5

    .line 478
    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 480
    :cond_5
    if-eqz p6, :cond_6

    if-eqz p5, :cond_6

    .line 481
    invoke-virtual {v0, p5, p6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 483
    :cond_6
    if-eqz p8, :cond_7

    if-eqz p7, :cond_7

    .line 484
    invoke-virtual {v0, p7, p8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 486
    :cond_7
    if-eqz p10, :cond_8

    if-eqz p9, :cond_8

    .line 487
    invoke-virtual {v0, p9, p10}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 489
    :cond_8
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 490
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    .line 466
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_9
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/CustomDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 467
    move-object p2, v1

    .line 468
    goto :goto_1
.end method

.method public static showCustomDialog(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "caller_context"    # Landroid/content/Context;
    .param p1, "TAG_ID"    # I
    .param p2, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/stbmc/maincontrol/CustomDialogActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    const-string v2, "tag_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    const-string v2, "dTitle"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v2, "dmessage"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 91
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 94
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
    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/stbmc/maincontrol/CustomDialogActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    const-string v2, "tag_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    const-string v2, "dTitle"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v2, "dmessage"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v2, "firstBtnText"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 110
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 113
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
    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/stbmc/maincontrol/CustomDialogActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    const-string v2, "tag_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    const-string v2, "dTitle"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v2, "dmessage"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v2, "firstBtnText"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v2, "secondBtnText"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 131
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 134
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
    .line 140
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/stbmc/maincontrol/CustomDialogActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    const-string v2, "tag_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    const-string v2, "dTitle"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v2, "dmessage"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v2, "firstBtnText"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v2, "secondBtnText"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v2, "thirdBtnText"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 153
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 156
    return-void
.end method


# virtual methods
.method public SendDialogResult(II)V
    .locals 5
    .param p1, "dialogId"    # I
    .param p2, "result"    # I

    .prologue
    .line 387
    const-string v2, "CustomDialogActivity"

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

    .line 388
    const-string v2, "CustomDialogActivity"

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

    .line 389
    new-instance v0, Landroid/content/Intent;

    const-string v2, "common.customdialog.POSTEVENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 391
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "dialogId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 392
    const-string v2, "Result"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 393
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 394
    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/CustomDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 395
    return-void
.end method

.method public createNoButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 160
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

    invoke-direct/range {v0 .. v10}, Lcom/stbmc/maincontrol/CustomDialogActivity;->showAlertDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomDialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    .line 162
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomDialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 163
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

    .line 167
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

    invoke-direct/range {v0 .. v10}, Lcom/stbmc/maincontrol/CustomDialogActivity;->showAlertDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomDialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    .line 169
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
    .line 183
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

    invoke-direct/range {v0 .. v10}, Lcom/stbmc/maincontrol/CustomDialogActivity;->showAlertDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomDialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    .line 186
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
    .line 174
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

    invoke-direct/range {v0 .. v10}, Lcom/stbmc/maincontrol/CustomDialogActivity;->showAlertDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomDialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    .line 177
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 420
    iget v0, p0, Lcom/stbmc/maincontrol/CustomDialogActivity;->TAG_ID:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/stbmc/maincontrol/CustomDialogActivity;->SendDialogResult(II)V

    .line 421
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 422
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/CustomDialogActivity;->finish()V

    .line 423
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 399
    const-string v1, "CustomDialogActivity"

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

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "butindex":I
    const/4 v1, -0x3

    if-ne v1, p2, :cond_2

    .line 402
    const/4 v0, 0x3

    .line 409
    :cond_0
    :goto_0
    const/16 v1, 0xe11

    const-string v2, "config.MarketCode"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    const-string v2, "config.OperatorsCode"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 411
    const-string v1, "CustomDialogActivity"

    const-string v2, "set sys.vod.showdialog  0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const-string v1, "sys.vod.showdialog"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_1
    iget v1, p0, Lcom/stbmc/maincontrol/CustomDialogActivity;->TAG_ID:I

    invoke-virtual {p0, v1, v0}, Lcom/stbmc/maincontrol/CustomDialogActivity;->SendDialogResult(II)V

    .line 414
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 415
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/CustomDialogActivity;->finish()V

    .line 416
    return-void

    .line 403
    :cond_2
    const/4 v1, -0x2

    if-ne v1, p2, :cond_3

    .line 404
    const/4 v0, 0x2

    goto :goto_0

    .line 405
    :cond_3
    const/4 v1, -0x1

    if-ne v1, p2, :cond_0

    .line 406
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "saveInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 306
    const-string v1, "CustomDialogActivity"

    const-string v2, "###====> onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 310
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "common.customdialog.DIALOG_HIDE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomDialogActivity;->CloseDialogReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/stbmc/maincontrol/CustomDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 313
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/CustomDialogActivity;->showMyDialog()V

    .line 314
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 377
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 378
    const-string v0, "CustomDialogActivity"

    const-string v1, "###====> onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomDialogActivity;->CloseDialogReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/CustomDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 380
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomDialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomDialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomDialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    .line 384
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

    .line 427
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 428
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 434
    :goto_0
    return v0

    .line 431
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 432
    const/4 v0, 0x0

    goto :goto_0

    .line 434
    :cond_1
    invoke-super {p0, p3}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 327
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 328
    const-string v1, "CustomDialogActivity"

    const-string v2, "###====> onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v1, "ro.product.epg5"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 331
    .local v0, "epg5":I
    const-string v1, "CustomDialogActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "###====> onPause(), epg5 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 335
    iput-boolean v4, p0, Lcom/stbmc/maincontrol/CustomDialogActivity;->bOnResume:Z

    .line 337
    new-instance v1, Lcom/stbmc/maincontrol/CustomDialogActivity$2;

    invoke-direct {v1, p0}, Lcom/stbmc/maincontrol/CustomDialogActivity$2;-><init>(Lcom/stbmc/maincontrol/CustomDialogActivity;)V

    .line 362
    invoke-virtual {v1}, Lcom/stbmc/maincontrol/CustomDialogActivity$2;->start()V

    .line 365
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 319
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stbmc/maincontrol/CustomDialogActivity;->bOnResume:Z

    .line 321
    const-string v0, "CustomDialogActivity"

    const-string v1, "###====> onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 370
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 371
    const-string v0, "CustomDialogActivity"

    const-string v1, "###====> onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return-void
.end method

.method public showMyDialog()V
    .locals 29

    .prologue
    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/stbmc/maincontrol/CustomDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v27

    .line 190
    .local v27, "intent":Landroid/content/Intent;
    const-string v2, "PostInfo"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v28

    .line 191
    .local v28, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 192
    .local v25, "i":I
    const-string v2, "tag_id"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/stbmc/maincontrol/CustomDialogActivity;->TAG_ID:I

    .line 193
    const-string v2, "dTitle"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "title":Ljava/lang/String;
    const-string v2, "dmessage"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 196
    .local v5, "message":Ljava/lang/String;
    const-string v2, "config.MarketCode"

    const/4 v8, 0x0

    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 197
    .local v21, "MarketCode":I
    const-string v2, "config.OperatorCode"

    const/4 v8, 0x0

    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 198
    .local v22, "OperatorCode":I
    const/4 v3, 0x0

    .line 199
    .local v3, "drawpic":Landroid/graphics/drawable/BitmapDrawable;
    const/16 v2, 0x4b1

    move/from16 v0, v21

    if-ne v2, v0, :cond_0

    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v2, v0, :cond_0

    .line 201
    const-string v2, "CustomDialogActivity"

    const-string v8, "###===> Belarus get rus_bg.jpg"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :try_start_0
    const-string v2, "/data/data/com.stbmc.maincontrol/files/mcres/respicsh/rus_bg.jpg"

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 204
    .local v26, "image":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "drawpic":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, v26

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v26    # "image":Landroid/graphics/Bitmap;
    .restart local v3    # "drawpic":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    :goto_0
    packed-switch v25, :pswitch_data_0

    .line 231
    const-string v17, "notice"

    const-string v18, "the message"

    const-string v19, "OK"

    const-string v20, "Cancle"

    move-object/from16 v15, p0

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v20}, Lcom/stbmc/maincontrol/CustomDialogActivity;->createTwoButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/stbmc/maincontrol/CustomDialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    .line 236
    const/16 v2, 0xfa2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/stbmc/maincontrol/CustomDialogActivity;->TAG_ID:I

    if-ne v2, v8, :cond_1

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/stbmc/maincontrol/CustomDialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 239
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/stbmc/maincontrol/CustomDialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 301
    :goto_2
    return-void

    .line 205
    .end local v3    # "drawpic":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v23

    .line 206
    .local v23, "e":Ljava/lang/Exception;
    const-string v2, "CustomDialogActivity"

    const-string v8, "###===> Belarus get rus_bg.jpg error"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V

    .line 208
    const/4 v3, 0x0

    .restart local v3    # "drawpic":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    .line 213
    .end local v23    # "e":Ljava/lang/Exception;
    :pswitch_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/stbmc/maincontrol/CustomDialogActivity;->createNoButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 216
    :pswitch_1
    const-string v2, "firstBtnText"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 217
    .local v24, "ft":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/stbmc/maincontrol/CustomDialogActivity;->createOneButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 220
    .end local v24    # "ft":Ljava/lang/String;
    :pswitch_2
    const-string v2, "firstBtnText"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 221
    .local v6, "wft":Ljava/lang/String;
    const-string v2, "secondBtnText"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "wst":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 222
    invoke-virtual/range {v2 .. v7}, Lcom/stbmc/maincontrol/CustomDialogActivity;->createTwoButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 225
    .end local v6    # "wft":Ljava/lang/String;
    .end local v7    # "wst":Ljava/lang/String;
    :pswitch_3
    const-string v2, "firstBtnText"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 226
    .local v12, "tft":Ljava/lang/String;
    const-string v2, "secondBtnText"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 227
    .local v13, "tst":Ljava/lang/String;
    const-string v2, "thirdBtnText"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "ttt":Ljava/lang/String;
    move-object/from16 v8, p0

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    .line 228
    invoke-virtual/range {v8 .. v14}, Lcom/stbmc/maincontrol/CustomDialogActivity;->createThreeButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 299
    .end local v12    # "tft":Ljava/lang/String;
    .end local v13    # "tst":Ljava/lang/String;
    .end local v14    # "ttt":Ljava/lang/String;
    :cond_2
    const-string v2, "CustomDialogActivity"

    const-string v8, "create dialog error, dialog is null, create dialog first"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
