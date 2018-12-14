.class Lrx/exceptions/CompositeException$c;
.super Lrx/exceptions/CompositeException$b;
.source "CompositeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/exceptions/CompositeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/io/PrintStream;


# direct methods
.method constructor <init>(Ljava/io/PrintStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, v0}, Lrx/exceptions/CompositeException$b;-><init>(Lrx/exceptions/CompositeException$1;)V

    .line 208
    iput-object p1, p0, Lrx/exceptions/CompositeException$c;->a:Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 1

    .line 213
    iget-object v0, p0, Lrx/exceptions/CompositeException$c;->a:Ljava/io/PrintStream;

    return-object v0
.end method

.method a(Ljava/lang/Object;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lrx/exceptions/CompositeException$c;->a:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method
