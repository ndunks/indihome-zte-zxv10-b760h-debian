.class public abstract Landroid/support/v4/app/bt;
.super Ljava/lang/Object;


# instance fields
.field d:Landroid/support/v4/app/bm;

.field e:Ljava/lang/CharSequence;

.field f:Ljava/lang/CharSequence;

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/bt;->g:Z

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/app/bt;->d:Landroid/support/v4/app/bm;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/bt;->d:Landroid/support/v4/app/bm;

    invoke-virtual {v0}, Landroid/support/v4/app/bm;->b()Landroid/app/Notification;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a(Landroid/support/v4/app/bm;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/bt;->d:Landroid/support/v4/app/bm;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/v4/app/bt;->d:Landroid/support/v4/app/bm;

    iget-object v0, p0, Landroid/support/v4/app/bt;->d:Landroid/support/v4/app/bm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/bt;->d:Landroid/support/v4/app/bm;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/bm;->a(Landroid/support/v4/app/bt;)Landroid/support/v4/app/bm;

    :cond_0
    return-void
.end method
