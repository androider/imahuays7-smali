.class public Lorg/fourthline/cling/support/shared/AWTExceptionHandler;
.super Ljava/lang/Object;
.source "AWTExceptionHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/Throwable;)V
    .locals 2

    .line 24
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "============= The application encountered an unrecoverable error, exiting... ============="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 25
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p1, v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    .line 26
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "=========================================================================================="

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 27
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
