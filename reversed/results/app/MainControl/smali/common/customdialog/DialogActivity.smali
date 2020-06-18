.class public Lcommon/customdialog/DialogActivity;
.super Landroid/app/Activity;
.source "DialogActivity.java"

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

.field private static final TAG:Ljava/lang/String; = "DialogActivity"


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

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcommon/customdialog/DialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    .line 50
    iput v1, p0, Lcommon/customdialog/DialogActivity;->TAG_ID:I

    .line 51
    iput-boolean v1, p0, Lcommon/customdialog/DialogActivity;->bOnResume:Z

    .line 53
    new-instance v0, Lcommon/customdialog/DialogActivity$1;

    invoke-direct {v0, p0}, Lcommon/customdialog/DialogActivity$1;-><init>(Lcommon/customdialog/DialogActivity;)V

    iput-object v0, p0, Lcommon/customdialog/DialogActivity;->CloseDialogReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcommon/customdialog/DialogActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcommon/customdialog/DialogActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcommon/customdialog/DialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcommon/customdialog/DialogActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcommon/customdialog/DialogActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 21
    iput-object p1, p0, Lcommon/customdialog/DialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcommon/customdialog/DialogActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcommon/customdialog/DialogActivity;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcommon/customdialog/DialogActivity;->bOnResume:Z

    return v0
.end method

.method private showAlertDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 4
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
    .line 370
    const-string v1, "DialogActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    if-nez p1, :cond_0

    .line 373
    const-string v1, "DialogActivity"

    const-string v2, "context is null!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v1, 0x0

    .line 397
    :goto_0
    return-object v1

    .line 377
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 378
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_1

    .line 379
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 381
    :cond_1
    if-eqz p3, :cond_2

    .line 382
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 384
    :cond_2
    if-eqz p4, :cond_3

    .line 385
    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 387
    :cond_3
    if-eqz p6, :cond_4

    if-eqz p5, :cond_4

    .line 388
    invoke-virtual {v0, p5, p6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 390
    :cond_4
    if-eqz p8, :cond_5

    if-eqz p7, :cond_5

    .line 391
    invoke-virtual {v0, p7, p8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 393
    :cond_5
    if-eqz p10, :cond_6

    if-eqz p9, :cond_6

    .line 394
    invoke-virtual {v0, p7, p8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 396
    :cond_6
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 397
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0
.end method

.method public static showCustomDialog(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "caller_context"    # Landroid/content/Context;
    .param p1, "TAG_ID"    # I
    .param p2, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcommon/customdialog/DialogActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string v2, "tag_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    const-string v2, "dTitle"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v2, "dmessage"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 82
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 85
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
    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcommon/customdialog/DialogActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    const-string v2, "tag_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    const-string v2, "dTitle"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v2, "dmessage"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v2, "firstBtnText"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 101
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
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
    .line 110
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcommon/customdialog/DialogActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    const-string v2, "tag_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    const-string v2, "dTitle"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v2, "dmessage"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v2, "firstBtnText"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v2, "secondBtnText"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 122
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 125
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
    .line 131
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcommon/customdialog/DialogActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    const-string v2, "tag_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    const-string v2, "dTitle"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v2, "dmessage"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v2, "firstBtnText"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v2, "secondBtnText"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v2, "thirdBtnText"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

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


# virtual methods
.method public SendDialogResult(II)V
    .locals 5
    .param p1, "dialogId"    # I
    .param p2, "result"    # I

    .prologue
    .line 317
    const-string v2, "DialogActivity"

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

    .line 318
    const-string v2, "DialogActivity"

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

    .line 319
    new-instance v0, Landroid/content/Intent;

    const-string v2, "common.customdialog.POSTEVENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 321
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "dialogId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 322
    const-string v2, "Result"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 323
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 324
    invoke-virtual {p0, v0}, Lcommon/customdialog/DialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 325
    return-void
.end method

.method public createNoButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 151
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

    invoke-direct/range {v0 .. v10}, Lcommon/customdialog/DialogActivity;->showAlertDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcommon/customdialog/DialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    .line 153
    iget-object v0, p0, Lcommon/customdialog/DialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 154
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

    .line 158
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

    invoke-direct/range {v0 .. v10}, Lcommon/customdialog/DialogActivity;->showAlertDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcommon/customdialog/DialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    .line 160
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
    .line 174
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

    invoke-direct/range {v0 .. v10}, Lcommon/customdialog/DialogActivity;->showAlertDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcommon/customdialog/DialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    .line 177
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
    .line 165
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

    invoke-direct/range {v0 .. v10}, Lcommon/customdialog/DialogActivity;->showAlertDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcommon/customdialog/DialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    .line 168
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 345
    iget v0, p0, Lcommon/customdialog/DialogActivity;->TAG_ID:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcommon/customdialog/DialogActivity;->SendDialogResult(II)V

    .line 346
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 347
    invoke-virtual {p0}, Lcommon/customdialog/DialogActivity;->finish()V

    .line 348
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 329
    const-string v1, "DialogActivity"

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

    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "butindex":I
    const/4 v1, -0x3

    if-ne v1, p2, :cond_1

    .line 332
    const/4 v0, 0x3

    .line 338
    :cond_0
    :goto_0
    iget v1, p0, Lcommon/customdialog/DialogActivity;->TAG_ID:I

    invoke-virtual {p0, v1, v0}, Lcommon/customdialog/DialogActivity;->SendDialogResult(II)V

    .line 339
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 340
    invoke-virtual {p0}, Lcommon/customdialog/DialogActivity;->finish()V

    .line 341
    return-void

    .line 333
    :cond_1
    const/4 v1, -0x2

    if-ne v1, p2, :cond_2

    .line 334
    const/4 v0, 0x2

    goto :goto_0

    .line 335
    :cond_2
    const/4 v1, -0x1

    if-ne v1, p2, :cond_0

    .line 336
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "saveInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 235
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 236
    const-string v1, "DialogActivity"

    const-string v2, "###====> onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 240
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "common.customdialog.DIALOG_HIDE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcommon/customdialog/DialogActivity;->CloseDialogReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcommon/customdialog/DialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0}, Lcommon/customdialog/DialogActivity;->showMyDialog()V

    .line 244
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 307
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 308
    const-string v0, "DialogActivity"

    const-string v1, "###====> onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcommon/customdialog/DialogActivity;->CloseDialogReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcommon/customdialog/DialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 310
    iget-object v0, p0, Lcommon/customdialog/DialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcommon/customdialog/DialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcommon/customdialog/DialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    .line 314
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

    .line 352
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 353
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 359
    :goto_0
    return v0

    .line 356
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 357
    const/4 v0, 0x0

    goto :goto_0

    .line 359
    :cond_1
    invoke-super {p0, p3}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 257
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 258
    const-string v1, "DialogActivity"

    const-string v2, "###====> onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v1, "ro.product.epg5"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 261
    .local v0, "epg5":I
    const-string v1, "DialogActivity"

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

    .line 262
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 265
    iput-boolean v4, p0, Lcommon/customdialog/DialogActivity;->bOnResume:Z

    .line 267
    new-instance v1, Lcommon/customdialog/DialogActivity$2;

    invoke-direct {v1, p0}, Lcommon/customdialog/DialogActivity$2;-><init>(Lcommon/customdialog/DialogActivity;)V

    .line 292
    invoke-virtual {v1}, Lcommon/customdialog/DialogActivity$2;->start()V

    .line 295
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 249
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcommon/customdialog/DialogActivity;->bOnResume:Z

    .line 251
    const-string v0, "DialogActivity"

    const-string v1, "###====> onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 300
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 301
    const-string v0, "DialogActivity"

    const-string v1, "###====> onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void
.end method

.method public showMyDialog()V
    .locals 29

    .prologue
    .line 180
    invoke-virtual/range {p0 .. p0}, Lcommon/customdialog/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v27

    .line 181
    .local v27, "intent":Landroid/content/Intent;
    const-string v2, "PostInfo"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v28

    .line 182
    .local v28, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 183
    .local v25, "i":I
    const-string v2, "tag_id"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcommon/customdialog/DialogActivity;->TAG_ID:I

    .line 184
    const-string v2, "dTitle"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, "title":Ljava/lang/String;
    const-string v2, "dmessage"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, "message":Ljava/lang/String;
    const-string v2, "config.MarketCode"

    const/4 v8, 0x0

    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 188
    .local v21, "MarketCode":I
    const-string v2, "config.OperatorCode"

    const/4 v8, 0x0

    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 189
    .local v22, "OperatorCode":I
    const/4 v3, 0x0

    .line 190
    .local v3, "drawpic":Landroid/graphics/drawable/BitmapDrawable;
    const/16 v2, 0x4b1

    move/from16 v0, v21

    if-ne v2, v0, :cond_0

    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v2, v0, :cond_0

    .line 192
    const-string v2, "DialogActivity"

    const-string v8, "###===> Belarus get rus_bg.jpg"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :try_start_0
    const-string v2, "/data/data/com.stbmc.maincontrol/files/mcres/respicsh/rus_bg.jpg"

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 195
    .local v26, "image":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "drawpic":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, v26

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v26    # "image":Landroid/graphics/Bitmap;
    .restart local v3    # "drawpic":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    :goto_0
    packed-switch v25, :pswitch_data_0

    .line 222
    const-string v17, "notice"

    const-string v18, "the message"

    const-string v19, "OK"

    const-string v20, "Cancle"

    move-object/from16 v15, p0

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v20}, Lcommon/customdialog/DialogActivity;->createTwoButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcommon/customdialog/DialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcommon/customdialog/DialogActivity;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 231
    :goto_2
    return-void

    .line 196
    .end local v3    # "drawpic":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v23

    .line 197
    .local v23, "e":Ljava/lang/Exception;
    const-string v2, "DialogActivity"

    const-string v8, "###===> Belarus get rus_bg.jpg error"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    const/4 v3, 0x0

    .restart local v3    # "drawpic":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    .line 204
    .end local v23    # "e":Ljava/lang/Exception;
    :pswitch_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcommon/customdialog/DialogActivity;->createNoButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 207
    :pswitch_1
    const-string v2, "firstBtnText"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 208
    .local v24, "ft":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v4, v5, v1}, Lcommon/customdialog/DialogActivity;->createOneButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 211
    .end local v24    # "ft":Ljava/lang/String;
    :pswitch_2
    const-string v2, "firstBtnText"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 212
    .local v6, "wft":Ljava/lang/String;
    const-string v2, "secondBtnText"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "wst":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 213
    invoke-virtual/range {v2 .. v7}, Lcommon/customdialog/DialogActivity;->createTwoButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 216
    .end local v6    # "wft":Ljava/lang/String;
    .end local v7    # "wst":Ljava/lang/String;
    :pswitch_3
    const-string v2, "firstBtnText"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 217
    .local v12, "tft":Ljava/lang/String;
    const-string v2, "secondBtnText"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 218
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

    .line 219
    invoke-virtual/range {v8 .. v14}, Lcommon/customdialog/DialogActivity;->createThreeButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 229
    .end local v12    # "tft":Ljava/lang/String;
    .end local v13    # "tst":Ljava/lang/String;
    .end local v14    # "ttt":Ljava/lang/String;
    :cond_1
    const-string v2, "DialogActivity"

    const-string v8, "create dialog error, dialog is null, create dialog first"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 202
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
