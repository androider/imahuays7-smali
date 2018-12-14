.class public interface abstract annotation Ljavax/servlet/annotation/HttpMethodConstraint;
.super Ljava/lang/Object;
.source "HttpMethodConstraint.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Ljavax/servlet/annotation/HttpMethodConstraint;
        emptyRoleSemantic = .enum Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;->PERMIT:Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;
        rolesAllowed = {}
        transportGuarantee = .enum Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;->NONE:Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract emptyRoleSemantic()Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;
.end method

.method public abstract rolesAllowed()[Ljava/lang/String;
.end method

.method public abstract transportGuarantee()Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;
.end method

.method public abstract value()Ljava/lang/String;
.end method
