.class public abstract Lcom/flurry/sdk/ep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String; = "ep"


# instance fields
.field private b:Ljava/io/PrintStream;

.field private c:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final run()V
    .locals 4

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/ep;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 39
    iget-object v1, p0, Lcom/flurry/sdk/ep;->b:Ljava/io/PrintStream;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/flurry/sdk/ep;->b:Ljava/io/PrintStream;

    invoke-static {v0, v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/ep;->c:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/flurry/sdk/ep;->c:Ljava/io/PrintWriter;

    invoke-static {v0, v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v1, 0x6

    .line 46
    sget-object v2, Lcom/flurry/sdk/ep;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
