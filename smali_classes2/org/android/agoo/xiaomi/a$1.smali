.class final Lorg/android/agoo/xiaomi/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/android/agoo/xiaomi/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/android/agoo/xiaomi/a$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/android/agoo/xiaomi/a$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/android/agoo/xiaomi/a$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/android/agoo/xiaomi/a$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lorg/android/agoo/xiaomi/a$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lorg/android/agoo/xiaomi/a$1;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lorg/android/agoo/xiaomi/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
