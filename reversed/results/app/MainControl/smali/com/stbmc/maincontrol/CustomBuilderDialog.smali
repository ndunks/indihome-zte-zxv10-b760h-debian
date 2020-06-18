.class public Lcom/stbmc/maincontrol/CustomBuilderDialog;
.super Landroid/app/AlertDialog;
.source "CustomBuilderDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomBuilderDialog"


# instance fields
.field private mAlert:Lcom/stbmc/maincontrol/CustomAlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const v0, 0x7f060004

    invoke-direct {p0, p1, v0}, Lcom/stbmc/maincontrol/CustomBuilderDialog;-><init>(Landroid/content/Context;I)V

    .line 90
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 94
    new-instance v0, Lcom/stbmc/maincontrol/CustomAlertController;

    invoke-virtual {p0}, Lcom/stbmc/maincontrol/CustomBuilderDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/stbmc/maincontrol/CustomAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog;->mAlert:Lcom/stbmc/maincontrol/CustomAlertController;

    .line 95
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 98
    const v0, 0x7f060004

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 99
    invoke-virtual {p0, p2}, Lcom/stbmc/maincontrol/CustomBuilderDialog;->setCancelable(Z)V

    .line 100
    invoke-virtual {p0, p3}, Lcom/stbmc/maincontrol/CustomBuilderDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 101
    new-instance v0, Lcom/stbmc/maincontrol/CustomAlertController;

    invoke-virtual {p0}, Lcom/stbmc/maincontrol/CustomBuilderDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/stbmc/maincontrol/CustomAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog;->mAlert:Lcom/stbmc/maincontrol/CustomAlertController;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/stbmc/maincontrol/CustomBuilderDialog;)Lcom/stbmc/maincontrol/CustomAlertController;
    .locals 1
    .param p0, "x0"    # Lcom/stbmc/maincontrol/CustomBuilderDialog;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog;->mAlert:Lcom/stbmc/maincontrol/CustomAlertController;

    return-object v0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog;->mAlert:Lcom/stbmc/maincontrol/CustomAlertController;

    invoke-virtual {v0, p1}, Lcom/stbmc/maincontrol/CustomAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog;->mAlert:Lcom/stbmc/maincontrol/CustomAlertController;

    invoke-virtual {v0}, Lcom/stbmc/maincontrol/CustomAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 283
    const-string v0, "CustomBuilderDialog"

    const-string v1, "==> onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog;->mAlert:Lcom/stbmc/maincontrol/CustomAlertController;

    invoke-virtual {v0}, Lcom/stbmc/maincontrol/CustomAlertController;->installContent()V

    .line 285
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog;->mAlert:Lcom/stbmc/maincontrol/CustomAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/stbmc/maincontrol/CustomAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 290
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog;->mAlert:Lcom/stbmc/maincontrol/CustomAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/stbmc/maincontrol/CustomAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 296
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog;->mAlert:Lcom/stbmc/maincontrol/CustomAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/stbmc/maincontrol/CustomAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 193
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog;->mAlert:Lcom/stbmc/maincontrol/CustomAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/stbmc/maincontrol/CustomAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 179
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/stbmc/maincontrol/CustomBuilderDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 234
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 201
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/stbmc/maincontrol/CustomBuilderDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 202
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 246
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/stbmc/maincontrol/CustomBuilderDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 247
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 210
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/stbmc/maincontrol/CustomBuilderDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 211
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 259
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/stbmc/maincontrol/CustomBuilderDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 260
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 219
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/stbmc/maincontrol/CustomBuilderDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 220
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog;->mAlert:Lcom/stbmc/maincontrol/CustomAlertController;

    invoke-virtual {v0, p1}, Lcom/stbmc/maincontrol/CustomAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 138
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog;->mAlert:Lcom/stbmc/maincontrol/CustomAlertController;

    invoke-virtual {v0, p1}, Lcom/stbmc/maincontrol/CustomAlertController;->setIcon(I)V

    .line 270
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog;->mAlert:Lcom/stbmc/maincontrol/CustomAlertController;

    invoke-virtual {v0, p1}, Lcom/stbmc/maincontrol/CustomAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 274
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 277
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog;->mAlert:Lcom/stbmc/maincontrol/CustomAlertController;

    invoke-virtual {v0, p1}, Lcom/stbmc/maincontrol/CustomAlertController;->setInverseBackgroundForced(Z)V

    .line 278
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog;->mAlert:Lcom/stbmc/maincontrol/CustomAlertController;

    invoke-virtual {v0, p1}, Lcom/stbmc/maincontrol/CustomAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog;->mAlert:Lcom/stbmc/maincontrol/CustomAlertController;

    invoke-virtual {v0, p1}, Lcom/stbmc/maincontrol/CustomAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog;->mAlert:Lcom/stbmc/maincontrol/CustomAlertController;

    invoke-virtual {v0, p1}, Lcom/stbmc/maincontrol/CustomAlertController;->setView(Landroid/view/View;)V

    .line 150
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBuilderDialog;->mAlert:Lcom/stbmc/maincontrol/CustomAlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/stbmc/maincontrol/CustomAlertController;->setView(Landroid/view/View;IIII)V

    .line 165
    return-void
.end method
