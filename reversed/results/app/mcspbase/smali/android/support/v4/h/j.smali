.class public Landroid/support/v4/h/j;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/support/v4/h/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/h/o;

    invoke-direct {v0}, Landroid/support/v4/h/o;-><init>()V

    sput-object v0, Landroid/support/v4/h/j;->a:Landroid/support/v4/h/p;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/h/l;

    invoke-direct {v0}, Landroid/support/v4/h/l;-><init>()V

    sput-object v0, Landroid/support/v4/h/j;->a:Landroid/support/v4/h/p;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Landroid/support/v4/h/j;->a:Landroid/support/v4/h/p;

    invoke-interface {v0}, Landroid/support/v4/h/p;->a()V

    return-void
.end method

.method public static a(I)V
    .locals 1

    sget-object v0, Landroid/support/v4/h/j;->a:Landroid/support/v4/h/p;

    invoke-interface {v0, p0}, Landroid/support/v4/h/p;->a(I)V

    return-void
.end method

.method public static a(II)V
    .locals 1

    sget-object v0, Landroid/support/v4/h/j;->a:Landroid/support/v4/h/p;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/h/p;->a(II)V

    return-void
.end method

.method public static a(Ljava/net/Socket;)V
    .locals 1

    sget-object v0, Landroid/support/v4/h/j;->a:Landroid/support/v4/h/p;

    invoke-interface {v0, p0}, Landroid/support/v4/h/p;->a(Ljava/net/Socket;)V

    return-void
.end method

.method public static b()I
    .locals 1

    sget-object v0, Landroid/support/v4/h/j;->a:Landroid/support/v4/h/p;

    invoke-interface {v0}, Landroid/support/v4/h/p;->b()I

    move-result v0

    return v0
.end method

.method public static b(I)V
    .locals 1

    sget-object v0, Landroid/support/v4/h/j;->a:Landroid/support/v4/h/p;

    invoke-interface {v0, p0}, Landroid/support/v4/h/p;->b(I)V

    return-void
.end method

.method public static b(Ljava/net/Socket;)V
    .locals 1

    sget-object v0, Landroid/support/v4/h/j;->a:Landroid/support/v4/h/p;

    invoke-interface {v0, p0}, Landroid/support/v4/h/p;->b(Ljava/net/Socket;)V

    return-void
.end method
