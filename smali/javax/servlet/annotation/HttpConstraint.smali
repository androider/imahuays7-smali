.class public interface abstract annotation Ljavax/servlet/annotation/HttpConstraint;
.super Ljava/lang/Object;
.source "HttpConstraint.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Ljavax/servlet/annotation/HttpConstraint;
        rolesAllowed = {}
        transportGuarantee = .enum Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;->NONE:Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;
        value = .enum Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;->PERMIT:Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract rolesAllowed()[Ljava/lang/String;
.end method

.method public abstract transportGuarantee()Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;
.end method

.method public abstract value()Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;
.end method
