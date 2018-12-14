.class public interface abstract annotation Ljavax/servlet/annotation/MultipartConfig;
.super Ljava/lang/Object;
.source "MultipartConfig.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Ljavax/servlet/annotation/MultipartConfig;
        fileSizeThreshold = 0x0
        location = ""
        maxFileSize = -0x1L
        maxRequestSize = -0x1L
    .end subannotation
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
.method public abstract fileSizeThreshold()I
.end method

.method public abstract location()Ljava/lang/String;
.end method

.method public abstract maxFileSize()J
.end method

.method public abstract maxRequestSize()J
.end method
