import cv2

def main():
    input_path = "figures/koukemo_cat.png"

    image = cv2.imread(input_path)

    if image is None:
        print('Failed to load image')
        return

    resized_img = cv2.resize(image, None, fx = 0.5, fy = 0.5)
    
    cv2.namedWindow("cat", cv2.WINDOW_NORMAL)

    cv2.imshow("cat", resized_img)
    cv2.waitKey(0)
    cv2.destroyAllWinodws()

if __name__ == "__main__":
    main()