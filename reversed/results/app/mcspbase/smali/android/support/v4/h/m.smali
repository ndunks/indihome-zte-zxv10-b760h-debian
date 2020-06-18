.class Landroid/support/v4/h/m;
.super Ljava/lang/ThreadLocal;


# instance fields
.field final synthetic a:Landroid/support/v4/h/l;


# direct methods
.method constructor <init>(Landroid/support/v4/h/l;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/h/m;->a:Landroid/support/v4/h/l;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Landroid/support/v4/h/n;
    .locals 2

    new-instance v0, Landroid/support/v4/h/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/h/n;-><init>(Landroid/support/v4/h/k;)V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/h/m;->a()Landroid/support/v4/h/n;

    move-result-object v0

    return-object v0
.end method
