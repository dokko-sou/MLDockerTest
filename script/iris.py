from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split

def main():
	iris = load_iris()
	x_train, x_test, y_train, y_test = train_test_split(iris.data, iris.target, test_size=0.2, random_state=22)
	print(x_train, x_train.shape)

if __name__ == "__main__":
	main()