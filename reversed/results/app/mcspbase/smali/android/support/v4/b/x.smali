.class abstract Landroid/support/v4/b/x;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "AsyncTask"

.field private static final b:I = 0x5

.field private static final c:I = 0x80

.field public static final d:Ljava/util/concurrent/Executor;

.field private static final e:I = 0x1

.field private static final f:Ljava/util/concurrent/ThreadFactory;

.field private static final g:Ljava/util/concurrent/BlockingQueue;

.field private static final h:I = 0x1

.field private static final i:I = 0x2

.field private static final j:Landroid/support/v4/b/ad;

.field private static volatile k:Ljava/util/concurrent/Executor;


# instance fields
.field private final l:Landroid/support/v4/b/af;

.field private final m:Ljava/util/concurrent/FutureTask;

.field private volatile n:Landroid/support/v4/b/ae;

.field private final o:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroid/support/v4/b/y;

    invoke-direct {v0}, Landroid/support/v4/b/y;-><init>()V

    sput-object v0, Landroid/support/v4/b/x;->f:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Landroid/support/v4/b/x;->g:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Landroid/support/v4/b/x;->g:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Landroid/support/v4/b/x;->f:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Landroid/support/v4/b/x;->d:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/support/v4/b/ad;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/b/ad;-><init>(Landroid/support/v4/b/y;)V

    sput-object v0, Landroid/support/v4/b/x;->j:Landroid/support/v4/b/ad;

    sget-object v0, Landroid/support/v4/b/x;->d:Ljava/util/concurrent/Executor;

    sput-object v0, Landroid/support/v4/b/x;->k:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/support/v4/b/ae;->a:Landroid/support/v4/b/ae;

    iput-object v0, p0, Landroid/support/v4/b/x;->n:Landroid/support/v4/b/ae;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/support/v4/b/x;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/support/v4/b/z;

    invoke-direct {v0, p0}, Landroid/support/v4/b/z;-><init>(Landroid/support/v4/b/x;)V

    iput-object v0, p0, Landroid/support/v4/b/x;->l:Landroid/support/v4/b/af;

    new-instance v0, Landroid/support/v4/b/aa;

    iget-object v1, p0, Landroid/support/v4/b/x;->l:Landroid/support/v4/b/af;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/b/aa;-><init>(Landroid/support/v4/b/x;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Landroid/support/v4/b/x;->m:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic a(Landroid/support/v4/b/x;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v4/b/x;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/b/x;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/x;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Landroid/support/v4/b/x;->k:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/util/concurrent/Executor;)V
    .locals 0

    sput-object p0, Landroid/support/v4/b/x;->k:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static b()V
    .locals 1

    sget-object v0, Landroid/support/v4/b/x;->j:Landroid/support/v4/b/ad;

    invoke-virtual {v0}, Landroid/support/v4/b/ad;->getLooper()Landroid/os/Looper;

    return-void
.end method

.method static synthetic b(Landroid/support/v4/b/x;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/b/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Landroid/support/v4/b/x;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/b/x;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/x;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v4/b/x;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x1

    sget-object v0, Landroid/support/v4/b/x;->j:Landroid/support/v4/b/ad;

    new-instance v1, Landroid/support/v4/b/ac;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Landroid/support/v4/b/ac;-><init>(Landroid/support/v4/b/x;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/b/ad;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method private e(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/b/x;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/b/x;->b(Ljava/lang/Object;)V

    :goto_0
    sget-object v0, Landroid/support/v4/b/ae;->c:Landroid/support/v4/b/ae;

    iput-object v0, p0, Landroid/support/v4/b/x;->n:Landroid/support/v4/b/ae;

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/b/x;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/support/v4/b/x;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/b/x;->n:Landroid/support/v4/b/ae;

    sget-object v1, Landroid/support/v4/b/ae;->a:Landroid/support/v4/b/ae;

    if-eq v0, v1, :cond_0

    sget-object v0, Landroid/support/v4/b/ab;->a:[I

    iget-object v1, p0, Landroid/support/v4/b/x;->n:Landroid/support/v4/b/ae;

    invoke-virtual {v1}, Landroid/support/v4/b/ae;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    sget-object v0, Landroid/support/v4/b/ae;->b:Landroid/support/v4/b/ae;

    iput-object v0, p0, Landroid/support/v4/b/x;->n:Landroid/support/v4/b/ae;

    invoke-virtual {p0}, Landroid/support/v4/b/x;->d()V

    iget-object v0, p0, Landroid/support/v4/b/x;->l:Landroid/support/v4/b/af;

    iput-object p2, v0, Landroid/support/v4/b/af;->b:[Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/b/x;->m:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/x;->m:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final a(Z)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/x;->m:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v4/b/x;->a()V

    return-void
.end method

.method protected varargs b([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final c()Landroid/support/v4/b/ae;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/x;->n:Landroid/support/v4/b/ae;

    return-object v0
.end method

.method public final varargs c([Ljava/lang/Object;)Landroid/support/v4/b/x;
    .locals 1

    sget-object v0, Landroid/support/v4/b/x;->k:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/b/x;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/support/v4/b/x;

    move-result-object v0

    return-object v0
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected final varargs d([Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/b/x;->e()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/support/v4/b/x;->j:Landroid/support/v4/b/ad;

    const/4 v1, 0x2

    new-instance v2, Landroid/support/v4/b/ac;

    invoke-direct {v2, p0, p1}, Landroid/support/v4/b/ac;-><init>(Landroid/support/v4/b/x;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/b/ad;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/x;->m:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/x;->m:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
