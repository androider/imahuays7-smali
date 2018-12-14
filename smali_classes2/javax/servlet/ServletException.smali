.class public Ljavax/servlet/ServletException;
.super Ljava/lang/Exception;
.source "ServletException.java"


# instance fields
.field private rootCause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    iput-object p2, p0, Ljavax/servlet/ServletException;->rootCause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 158
    iput-object p1, p0, Ljavax/servlet/ServletException;->rootCause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getRootCause()Ljava/lang/Throwable;
    .locals 1

    .line 175
    iget-object v0, p0, Ljavax/servlet/ServletException;->rootCause:Ljava/lang/Throwable;

    return-object v0
.end method
