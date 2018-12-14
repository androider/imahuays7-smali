.class public Lcom/mh/movie/core/mvp/ui/utils/ExceptionHandle$ResponseThrowable;
.super Ljava/lang/Exception;
.source "ExceptionHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/utils/ExceptionHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseThrowable"
.end annotation


# instance fields
.field public code:I

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 60
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/utils/ExceptionHandle$ResponseThrowable;->code:I

    return-void
.end method
