.class public interface abstract annotation Lorg/simple/eventbus/Subscriber;
.super Ljava/lang/Object;
.source "Subscriber.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/simple/eventbus/Subscriber;
        mode = .enum Lorg/simple/eventbus/ThreadMode;->MAIN:Lorg/simple/eventbus/ThreadMode;
        tag = "default_tag"
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract mode()Lorg/simple/eventbus/ThreadMode;
.end method

.method public abstract tag()Ljava/lang/String;
.end method
