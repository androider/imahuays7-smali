.class public interface abstract Lorg/fourthline/cling/registry/event/Phase;
.super Ljava/lang/Object;
.source "Phase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/registry/event/Phase$Updated;,
        Lorg/fourthline/cling/registry/event/Phase$Byebye;,
        Lorg/fourthline/cling/registry/event/Phase$Complete;,
        Lorg/fourthline/cling/registry/event/Phase$Alive;
    }
.end annotation


# static fields
.field public static final ALIVE:Ljavax/enterprise/util/AnnotationLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/enterprise/util/AnnotationLiteral<",
            "Lorg/fourthline/cling/registry/event/Phase$Alive;",
            ">;"
        }
    .end annotation
.end field

.field public static final BYEBYE:Ljavax/enterprise/util/AnnotationLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/enterprise/util/AnnotationLiteral<",
            "Lorg/fourthline/cling/registry/event/Phase$Byebye;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMPLETE:Ljavax/enterprise/util/AnnotationLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/enterprise/util/AnnotationLiteral<",
            "Lorg/fourthline/cling/registry/event/Phase$Complete;",
            ">;"
        }
    .end annotation
.end field

.field public static final UPDATED:Ljavax/enterprise/util/AnnotationLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/enterprise/util/AnnotationLiteral<",
            "Lorg/fourthline/cling/registry/event/Phase$Updated;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lorg/fourthline/cling/registry/event/Phase$1;

    invoke-direct {v0}, Lorg/fourthline/cling/registry/event/Phase$1;-><init>()V

    sput-object v0, Lorg/fourthline/cling/registry/event/Phase;->ALIVE:Ljavax/enterprise/util/AnnotationLiteral;

    .line 36
    new-instance v0, Lorg/fourthline/cling/registry/event/Phase$2;

    invoke-direct {v0}, Lorg/fourthline/cling/registry/event/Phase$2;-><init>()V

    sput-object v0, Lorg/fourthline/cling/registry/event/Phase;->COMPLETE:Ljavax/enterprise/util/AnnotationLiteral;

    .line 39
    new-instance v0, Lorg/fourthline/cling/registry/event/Phase$3;

    invoke-direct {v0}, Lorg/fourthline/cling/registry/event/Phase$3;-><init>()V

    sput-object v0, Lorg/fourthline/cling/registry/event/Phase;->BYEBYE:Ljavax/enterprise/util/AnnotationLiteral;

    .line 42
    new-instance v0, Lorg/fourthline/cling/registry/event/Phase$4;

    invoke-direct {v0}, Lorg/fourthline/cling/registry/event/Phase$4;-><init>()V

    sput-object v0, Lorg/fourthline/cling/registry/event/Phase;->UPDATED:Ljavax/enterprise/util/AnnotationLiteral;

    return-void
.end method
