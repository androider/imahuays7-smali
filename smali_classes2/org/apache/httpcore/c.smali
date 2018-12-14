.class public interface abstract Lorg/apache/httpcore/c;
.super Ljava/lang/Object;
.source "ExceptionLogger.java"


# static fields
.field public static final a:Lorg/apache/httpcore/c;

.field public static final b:Lorg/apache/httpcore/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lorg/apache/httpcore/c$1;

    invoke-direct {v0}, Lorg/apache/httpcore/c$1;-><init>()V

    sput-object v0, Lorg/apache/httpcore/c;->a:Lorg/apache/httpcore/c;

    .line 42
    new-instance v0, Lorg/apache/httpcore/c$2;

    invoke-direct {v0}, Lorg/apache/httpcore/c$2;-><init>()V

    sput-object v0, Lorg/apache/httpcore/c;->b:Lorg/apache/httpcore/c;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Exception;)V
.end method
