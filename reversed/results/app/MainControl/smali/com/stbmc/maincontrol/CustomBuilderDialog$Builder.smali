.class public Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
.super Landroid/app/AlertDialog$Builder;
.source "CustomBuilderDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stbmc/maincontrol/CustomBuilderDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 307
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 308
    const-string v0, "CustomBuilderDialog"

    const-string v1, "Builder begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    invoke-direct {v0, p1}, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    .line 310
    return-void
.end method


# virtual methods
.method public create()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 827
    const-string v1, "CustomBuilderDialog"

    const-string v2, "Builder ==> onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    new-instance v0, Lcom/stbmc/maincontrol/CustomBuilderDialog;

    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v1, v1, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/stbmc/maincontrol/CustomBuilderDialog;-><init>(Landroid/content/Context;)V

    .line 829
    .local v0, "dialog":Lcom/stbmc/maincontrol/CustomBuilderDialog;
    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    invoke-static {v0}, Lcom/stbmc/maincontrol/CustomBuilderDialog;->access$000(Lcom/stbmc/maincontrol/CustomBuilderDialog;)Lcom/stbmc/maincontrol/CustomAlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->apply(Lcom/stbmc/maincontrol/CustomAlertController;)V

    .line 830
    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/stbmc/maincontrol/CustomBuilderDialog;->setCancelable(Z)V

    .line 831
    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v1, v1, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/stbmc/maincontrol/CustomBuilderDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 832
    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v1, v1, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_0

    .line 833
    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v1, v1, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/stbmc/maincontrol/CustomBuilderDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 835
    :cond_0
    return-object v0
.end method

.method public bridge synthetic setCancelable(Z)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setCancelable(Z)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCancelable(Z)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 472
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mCancelable:Z

    .line 473
    return-object p0
.end method

.method public bridge synthetic setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1, p2, p3}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "labelColumn"    # Ljava/lang/String;

    .prologue
    .line 553
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 554
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p3, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 555
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p2, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 556
    return-object p0
.end method

.method public bridge synthetic setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setCustomTitle(Landroid/view/View;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 345
    return-object p0
.end method

.method public bridge synthetic setIcon(I)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setIcon(I)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(I)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 374
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput p1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mIconId:I

    .line 375
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 385
    return-object p0
.end method

.method public bridge synthetic setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setInverseBackgroundForced(Z)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setInverseBackgroundForced(Z)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 1
    .param p1, "useInverseBackground"    # Z

    .prologue
    .line 807
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mForceInverseBackground:Z

    .line 808
    return-object p0
.end method

.method public bridge synthetic setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 504
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v1, v1, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 505
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p2, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 506
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 516
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 517
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p2, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 518
    return-object p0
.end method

.method public bridge synthetic setMessage(I)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setMessage(I)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMessage(I)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 354
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v1, v1, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 355
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 365
    return-object p0
.end method

.method public bridge synthetic setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1, p2, p3}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1, p2, p3}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 579
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v1, v1, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 580
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p3, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 581
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p2, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mCheckedItems:[Z

    .line 582
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mIsMultiChoice:Z

    .line 583
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCheckedColumn"    # Ljava/lang/String;
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 633
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 634
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p4, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 635
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p2, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 636
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p3, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 637
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mIsMultiChoice:Z

    .line 638
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 605
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 606
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p3, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 607
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p2, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mCheckedItems:[Z

    .line 608
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mIsMultiChoice:Z

    .line 609
    return-object p0
.end method

.method public bridge synthetic setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v1, v1, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 423
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p2, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 424
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 436
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p2, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 437
    return-object p0
.end method

.method public bridge synthetic setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 448
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v1, v1, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 449
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p2, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 450
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 461
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 462
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p2, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 463
    return-object p0
.end method

.method public bridge synthetic setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 483
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 484
    return-object p0
.end method

.method public bridge synthetic setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 747
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 748
    return-object p0
.end method

.method public bridge synthetic setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 1
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 494
    return-object p0
.end method

.method public bridge synthetic setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v1, v1, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 397
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p2, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 398
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 410
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p2, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 411
    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 815
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 816
    return-object p0
.end method

.method public bridge synthetic setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1, p2, p3}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1, p2, p3}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 658
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v1, v1, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 659
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p3, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 660
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput p2, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mCheckedItem:I

    .line 661
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mIsSingleChoice:Z

    .line 662
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "checkedItem"    # I
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 683
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 684
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p4, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 685
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput p2, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mCheckedItem:I

    .line 686
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p3, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 687
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mIsSingleChoice:Z

    .line 688
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 706
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 707
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p3, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 708
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput p2, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mCheckedItem:I

    .line 709
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mIsSingleChoice:Z

    .line 710
    return-object p0
.end method

.method public bridge synthetic setTitle(I)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setTitle(I)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(I)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 2
    .param p1, "titleId"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v1, v1, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 319
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 329
    return-object p0
.end method

.method public bridge synthetic setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->setView(Landroid/view/View;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setView(Landroid/view/View;)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 760
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mView:Landroid/view/View;

    .line 761
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 762
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 789
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mView:Landroid/view/View;

    .line 790
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 791
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput p2, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mViewSpacingLeft:I

    .line 792
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput p3, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mViewSpacingTop:I

    .line 793
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput p4, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mViewSpacingRight:I

    .line 794
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->P:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput p5, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mViewSpacingBottom:I

    .line 795
    return-object p0
.end method

.method public show()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 843
    const-string v1, "CustomBuilderDialog"

    const-string v2, "Builder ==> show"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 845
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 846
    return-object v0
.end method
