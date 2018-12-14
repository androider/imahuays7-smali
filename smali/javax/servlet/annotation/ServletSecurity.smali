.class public interface abstract annotation Ljavax/servlet/annotation/ServletSecurity;
.super Ljava/lang/Object;
.source "ServletSecurity.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Ljavax/servlet/annotation/ServletSecurity;
        httpMethodConstraints = {}
        value = .subannotation Ljavax/servlet/annotation/HttpConstraint;
        .end subannotation
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;,
        Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Inherited;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract httpMethodConstraints()[Ljavax/servlet/annotation/HttpMethodConstraint;
.end method

.method public abstract value()Ljavax/servlet/annotation/HttpConstraint;
.end method
