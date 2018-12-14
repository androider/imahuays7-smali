.class public Ljavax/servlet/HttpMethodConstraintElement;
.super Ljavax/servlet/HttpConstraintElement;
.source "HttpMethodConstraintElement.java"


# instance fields
.field private methodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljavax/servlet/HttpConstraintElement;-><init>()V

    if-eqz p1, :cond_1

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iput-object p1, p0, Ljavax/servlet/HttpMethodConstraintElement;->methodName:Ljava/lang/String;

    return-void

    .line 64
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid HTTP method name"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/servlet/HttpConstraintElement;)V
    .locals 2

    .line 81
    invoke-virtual {p2}, Ljavax/servlet/HttpConstraintElement;->getEmptyRoleSemantic()Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;

    move-result-object v0

    invoke-virtual {p2}, Ljavax/servlet/HttpConstraintElement;->getTransportGuarantee()Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

    move-result-object v1

    invoke-virtual {p2}, Ljavax/servlet/HttpConstraintElement;->getRolesAllowed()[Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, v1, p2}, Ljavax/servlet/HttpConstraintElement;-><init>(Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;[Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iput-object p1, p0, Ljavax/servlet/HttpMethodConstraintElement;->methodName:Ljava/lang/String;

    return-void

    .line 85
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid HTTP method name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Ljavax/servlet/HttpMethodConstraintElement;->methodName:Ljava/lang/String;

    return-object v0
.end method
