.class Lcom/autonavi/navigation/api/map/internal/p$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/map/internal/p;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/map/internal/p;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/p$4;->a:Lcom/autonavi/navigation/api/map/internal/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p$4;->a:Lcom/autonavi/navigation/api/map/internal/p;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/p;->a(Lcom/autonavi/navigation/api/map/internal/p;)Lcom/autonavi/navigation/api/map/internal/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->i()V

    return-void
.end method
